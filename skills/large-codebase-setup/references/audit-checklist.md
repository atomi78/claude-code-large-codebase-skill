# Audit Checklist

Use this checklist to assess a repository before changing Claude Code configuration.

## Repository shape

- Starting directory and repo root.
- Top-level directories and their purpose.
- Primary languages and frameworks.
- Package managers and workspace files.
- Build/test entry points: `package.json`, `Makefile`, CI workflows, Bazel/Buck/Pants configs, Gradle/Maven files, Cargo workspaces, solution files, or language-specific equivalents.
- Generated, vendored, build, cache, binary, and third-party directories.

## Claude Code harness

- Root `CLAUDE.md` exists and is concise.
- Subdirectory `CLAUDE.md` files exist where local conventions differ.
- Existing project skills are scoped to real task types.
- Hooks automate deterministic behavior rather than asking the model to remember.
- `.claude/settings.json` contains useful version-controlled denies or permissions.
- Plugin packaging exists if the setup should be distributed beyond one repo.
- LSP/code intelligence is available for languages where symbol navigation matters.
- MCP servers are only proposed after local context, skills, and commands are working.

## Smells

- Root `CLAUDE.md` contains long procedures, stale model workarounds, or local-only commands.
- One global test command is used for all changes in a large monorepo.
- Generated files dominate search results.
- Directory names do not reveal ownership or purpose.
- Similar skills/hooks have been recreated independently by multiple teams.
- There is no DRI for Claude Code settings, permissions, skills, or plugin distribution.

## Output format

Report findings in this order:

1. Highest-impact fixes.
2. Current harness inventory.
3. Recommended file changes.
4. Open questions for code owners.
5. Suggested review cadence.
