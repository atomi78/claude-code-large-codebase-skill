---
description: Refactor a large or stale CLAUDE.md into layered context
argument-hint: [path or focus]
allowed-tools: Read, Grep, Glob, LS, Bash, Edit, MultiEdit, Write
---

# Refactor CLAUDE.md

Use the `claude-md-architect` skill.

Inspect root and nested `CLAUDE.md` files. Separate global context, local context, and procedural workflows. Keep root context concise, move local details near the code, and recommend new skills for repeatable procedures.

Do not invent commands or owners. Mark unknowns as `TODO`.
