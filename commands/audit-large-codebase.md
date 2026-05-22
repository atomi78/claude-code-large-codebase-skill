---
description: Audit this repo for Claude Code readiness
argument-hint: [path or focus]
allowed-tools: Bash(large-codebase-workflow audit:*), Read, Grep, Glob, LS
---

# Audit Large Codebase

Use the `large-codebase-audit` skill.

Audit the current repository or `$ARGUMENTS` path/focus. Start with this lightweight CLI audit, then inspect files directly before making recommendations:

!`large-codebase-workflow audit .`

Do not modify files. Report highest-impact fixes, current harness inventory, recommended changes, open questions, and next investment order.
