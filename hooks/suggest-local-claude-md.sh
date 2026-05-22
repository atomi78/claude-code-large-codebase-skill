#!/usr/bin/env bash
set -euo pipefail

payload="$(mktemp "${TMPDIR:-/tmp}/claude-hook.XXXXXX")"
cat > "$payload"

paths="$(
  grep -Eo '"[^"]+\.[A-Za-z0-9_./-]+"' "$payload" \
    | tr -d '"' \
    | grep '/' \
    | grep -vE '^(\.|/)?(node_modules|dist|build|coverage|vendor|target)/' \
    | head -20 || true
)"

rm -f "$payload"

[ -n "$paths" ] || exit 0

while IFS= read -r path; do
  [ -n "$path" ] || continue
  dir="$(dirname "$path")"
  [ "$dir" = "." ] && continue

  first_two="$(printf '%s\n' "$dir" | awk -F/ '{ if (NF >= 2) print $1 "/" $2; else print $1 }')"
  [ -n "$first_two" ] || continue

  if [ -d "$first_two" ] && [ ! -f "$first_two/CLAUDE.md" ]; then
    printf 'Claude Code local-context suggestion: repeated work under %s may benefit from %s/CLAUDE.md with local commands, architecture notes, and gotchas.\n' "$first_two" "$first_two"
    exit 0
  fi
done <<EOF
$paths
EOF
