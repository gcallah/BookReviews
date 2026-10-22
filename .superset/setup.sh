#!/usr/bin/env bash
# Prepare a new Superset workspace for this static book-review site.
# There are no package dependencies; we copy untracked local files from the
# main checkout and check for the tools the repo's scripts use.
set -euo pipefail

ROOT="${SUPERSET_ROOT_PATH:-}"
WS="${SUPERSET_WORKSPACE_PATH:-$(pwd)}"

if [ -n "$ROOT" ] && [ "$ROOT" != "$WS" ]; then
    # Env/secret files are gitignored, so new worktrees don't get them.
    for f in .env .env.local .env.development.local; do
        if [ -f "$ROOT/$f" ] && [ ! -e "$WS/$f" ]; then
            cp "$ROOT/$f" "$WS/$f"
            echo "Copied $f from $ROOT"
        fi
    done
fi

# md2doc.sh needs pandoc; the dev server needs python3. Warn, don't fail.
for tool in python3 pandoc; do
    command -v "$tool" >/dev/null 2>&1 || echo "Warning: $tool not found on PATH"
done

echo "Workspace setup complete."
