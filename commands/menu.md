---
description: Show the Large Codebase Workflow menu
argument-hint: [audit|scaffold|install|skill|rollout]
allowed-tools: Bash(large-codebase-workflow audit:*)
---

# Large Codebase Workflow Menu

Use the large-codebase-setup skill to help the user choose and run one workflow.

If `$ARGUMENTS` is empty, show this menu and ask the user to reply with a number:

1. Audit this repository for Claude Code readiness. Use `/audit-large-codebase`.
2. Create starter setup files. Use `/scaffold-claude`.
3. Refactor layered `CLAUDE.md` files. Use `/refactor-claude-md`.
4. Build or update `CODEBASE_MAP.md`. Use `/map-codebase`.
5. Recommend `.claude/settings.json` exclusions for generated/vendor/build noise. Use `/reduce-context-noise`.
6. Discover scoped test/lint/typecheck/build commands. Use `/discover-validation`.
7. Plan team rollout and governance. Use `/large-codebase-rollout`.

If `$ARGUMENTS` is present, map it to the closest option and run that workflow directly.

Use live repository inspection before recommending changes. Do not modify files until the user asks you to apply a specific option.

Current lightweight audit:

!`large-codebase-workflow audit .`
