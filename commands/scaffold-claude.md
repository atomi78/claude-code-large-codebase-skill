---
description: Create starter CLAUDE.md, CODEBASE_MAP.md, and settings files
argument-hint: [path]
allowed-tools: Bash(large-codebase-workflow scaffold:*), Read, Grep, Glob, LS, Edit, MultiEdit, Write
---

# Scaffold Claude Code Setup

Use the `claude-md-architect`, `codebase-map-builder`, and `context-noise-reducer` skills.

Scaffold missing Claude Code setup files for the current repository or `$ARGUMENTS` path:

!`large-codebase-workflow scaffold .`

After scaffolding, inspect the created files and replace placeholders with repository facts where they are discoverable.
