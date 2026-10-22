#!/usr/bin/env bash
# Serve the site locally. Each workspace gets its own port: we start from a
# base derived from the workspace name and probe upward until one is free,
# so parallel workspaces never collide.
set -euo pipefail

cd "${SUPERSET_WORKSPACE_PATH:-$(dirname "$0")/..}"

port_free() {
    ! (exec 3<>"/dev/tcp/127.0.0.1/$1") 2>/dev/null
}

name="${SUPERSET_WORKSPACE_NAME:-default}"
hash=$(printf '%s' "$name" | cksum | cut -d' ' -f1)
port=$(( ${PORT:-8000} + hash % 1000 ))
while ! port_free "$port"; do
    port=$((port + 1))
done

echo "$port" > .superset/.run.port
echo "Serving $(pwd) at http://localhost:$port/"
exec python3 -m http.server "$port" --bind 127.0.0.1
