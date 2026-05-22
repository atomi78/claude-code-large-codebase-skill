---
name: codebase-map-builder
description: Build or update CODEBASE_MAP.md files for large or unclear repositories. Use when top-level directories, packages, services, ownership, or local guides need a concise map for humans and Claude Code.
allowed-tools: Read Grep Glob LS Bash Edit MultiEdit Write
---

# Codebase Map Builder

Create a concise table of contents for the repository.

## Inspect

- Top-level directories.
- Workspace/package/service definitions.
- CI config and deploy config.
- Ownership files such as `CODEOWNERS`.
- Existing docs that explain architecture or service purpose.

## Map Format

Use a simple table:

| Path | Purpose | Owner | Local guide |
| --- | --- | --- | --- |
| `apps/web/` | Customer web app | TODO | `apps/web/CLAUDE.md` |

## Rules

- Keep entries short.
- Do not duplicate detailed local conventions; point to nested `CLAUDE.md`.
- Mark unknown purpose or owner as `TODO`.
- Include generated/vendor/build directories only if they are easy to confuse with source.
