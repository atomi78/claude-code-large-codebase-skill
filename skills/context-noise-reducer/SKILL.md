---
name: context-noise-reducer
description: Reduce Claude Code search and context noise in large repositories. Use when the user wants .claude/settings.json exclusions, generated/vendor/build path detection, dangerous command denies, or cleaner code search behavior.
allowed-tools: Read Grep Glob LS Bash Edit MultiEdit Write
---

# Context Noise Reducer

Reduce noise without blocking legitimate source edits.

## Candidates

Look for generated, vendored, build, cache, binary, and coverage paths such as:

- `node_modules/**`
- `dist/**`
- `build/**`
- `coverage/**`
- `.next/**`
- `.turbo/**`
- `target/**`
- `vendor/**`
- generated API clients or compiled assets

## Workflow

1. Inspect actual repo paths before proposing deny rules.
2. Check whether suspicious generated paths are normally edited by developers.
3. Add or recommend narrow `.claude/settings.json` `permissions.deny` rules.
4. Avoid broad rules that block source directories.
5. Mention why non-obvious rules exist in `CLAUDE.md` or local docs.

## Validate

- Ensure JSON is valid.
- Keep comments out of JSON.
- Do not add destructive command policies without explaining the review tradeoff.
