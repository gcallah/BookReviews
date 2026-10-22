#!/usr/bin/env bash
# Stop the dev server started by run.sh for this workspace, if still running.
set -uo pipefail

cd "${SUPERSET_WORKSPACE_PATH:-$(dirname "$0")/..}"

if [ -f .superset/.run.port ]; then
    port=$(cat .superset/.run.port)
    pids=$(lsof -ti "tcp:$port" -sTCP:LISTEN 2>/dev/null || true)
    [ -n "$pids" ] && kill $pids 2>/dev/null && echo "Stopped server on port $port"
    rm -f .superset/.run.port
fi
exit 0
