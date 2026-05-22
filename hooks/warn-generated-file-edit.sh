#!/usr/bin/env bash
set -euo pipefail

payload="$(mktemp "${TMPDIR:-/tmp}/claude-hook.XXXXXX")"
cat > "$payload"

patterns='/(dist|build|coverage|vendor|node_modules|target|generated|gen|__generated__)/|(\.generated\.|\.gen\.)|(-generated\.|_generated\.)'

if grep -E "$patterns" "$payload" >/dev/null 2>&1; then
  cat <<'EOF'
Claude Code generated-file warning: the edited path looks generated, vendored, or build-produced. Prefer editing the source schema/template/generator and regenerating the output unless this repo intentionally edits that file by hand.
EOF
fi

rm -f "$payload"
