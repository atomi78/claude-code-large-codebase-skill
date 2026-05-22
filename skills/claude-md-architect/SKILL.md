---
name: claude-md-architect
description: Create, refactor, or review root and nested CLAUDE.md files for large codebases. Use when the user wants layered Claude Code context, shorter root instructions, local package/service guides, or migration from one giant CLAUDE.md.
allowed-tools: Read Grep Glob LS Bash Edit MultiEdit Write
---

# CLAUDE.md Architect

Design `CLAUDE.md` as layered context, not a dumping ground.

## Rules

- Root `CLAUDE.md`: repo purpose, top-level navigation, global constraints, broadly useful commands, and pointers.
- Nested `CLAUDE.md`: local architecture, commands, conventions, ownership, and gotchas for that area.
- Long procedures belong in project skills or docs, not root context.
- Add `Last reviewed: YYYY-MM-DD` for non-obvious constraints.
- Keep unknown owners or commands marked as `TODO`, not invented.

## Workflow

1. Read existing root and nearby `CLAUDE.md` files.
2. Inspect package scripts, Makefiles, CI files, and docs before naming commands.
3. Decide which content is global, local, or procedural.
4. Create or refactor root and nested files with minimal duplication.
5. Validate that commands referenced in the files exist or are clearly marked unknown.

## Output

Summarize:

- Root context kept.
- Local context added or proposed.
- Procedures moved or recommended as skills.
- Remaining owner/domain questions.
