---
name: large-codebase-audit
description: Audit a repository's Claude Code readiness. Use when the user asks to assess, inspect, score, or diagnose Claude Code setup for a large codebase, monorepo, legacy repo, or multi-service repository.
allowed-tools: Read Grep Glob LS Bash
---

# Large Codebase Audit

Audit before proposing changes. Optimize for facts from the live repository.

## Inspect

- Repository shape: monorepo, service repo, legacy tree, generated-code-heavy repo, or mixed.
- Languages, package managers, workspace files, build systems, and CI entry points.
- Existing `CLAUDE.md`, nested `CLAUDE.md`, `CODEBASE_MAP.md`, `.claude/settings.json`, project skills, commands, hooks, and plugin files.
- Noisy paths: generated, vendored, build, cache, binary, coverage, snapshots, and third-party code.
- Validation commands available at root and local package/service level.
- Areas where local ownership or architecture is unclear.

## Report

Use this order:

1. Highest-impact fixes.
2. Current Claude Code harness inventory.
3. Recommended file changes.
4. Open questions for code owners.
5. Suggested next investment: layered context, settings, skills, hooks, LSP, MCP, subagents, plugin packaging.

## Guardrails

- Do not modify files during a pure audit unless the user explicitly asks.
- Do not invent commands or owners.
- Prefer concrete paths and discovered files over generic advice.
