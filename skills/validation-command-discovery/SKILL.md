---
name: validation-command-discovery
description: Discover and document scoped validation commands for large codebases. Use when the user wants test, lint, typecheck, build, codegen, or CI commands that are appropriate for the changed package, service, or module.
allowed-tools: Read Grep Glob LS Bash Edit MultiEdit Write
---

# Validation Command Discovery

Find the smallest meaningful validation command for the work area.

## Inspect

- `package.json`, workspace files, lockfiles.
- `Makefile`, `justfile`, `Taskfile.yml`.
- CI workflows.
- Language-specific build files: Gradle/Maven, Cargo, Go modules, Poetry/uv, Bazel/Buck/Pants, solution files.
- Existing docs and nested `CLAUDE.md`.

## Output Pattern

For each area, document:

- Install command.
- Fast local test.
- Full local test.
- Lint/typecheck.
- Build.
- Codegen or schema validation.
- When to run root-level validation.

## Rules

- Do not invent commands.
- Prefer local package/service commands for small changes.
- Document root commands only when needed for cross-cutting changes.
- If commands are missing, propose exact TODOs for code owners.
