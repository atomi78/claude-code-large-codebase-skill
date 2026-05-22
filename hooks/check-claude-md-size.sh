#!/usr/bin/env bash
set -euo pipefail

max_lines="${CLAUDE_MD_MAX_LINES:-250}"

find . -name CLAUDE.md \
  -not -path './.git/*' \
  -not -path './node_modules/*' \
  -not -path './dist/*' \
  -not -path './build/*' \
  -print | while IFS= read -r file; do
    lines="$(wc -l < "$file" | tr -d ' ')"
    if [ "$lines" -gt "$max_lines" ]; then
      printf 'Claude Code context warning: %s has %s lines. Consider moving local details into nested CLAUDE.md files or repeatable procedures into skills.\n' "$file" "$lines"
    fi
  done
