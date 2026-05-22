# Claude Code Large Codebase Workflow

A Claude Code plugin, standalone skill pack, command pack, optional hook pack, and CLI helper for improving Claude Code behavior in large codebases, monorepos, legacy systems, and multi-service repositories.

It turns Anthropic's large-codebase guidance into practical workflows: layered `CLAUDE.md` files, scoped validation commands, codebase maps, search-noise reduction, skill/plugin boundaries, LSP readiness, subagent usage, hooks, and team ownership.

Source article: [How Claude Code works in large codebases: Best practices and where to start](https://claude.com/blog/how-claude-code-works-in-large-codebases-best-practices-and-where-to-start).

For consulting positioning and enterprise sales messaging, see [docs/value-proposition.md](docs/value-proposition.md).

## Use As A Plugin

Load the plugin directly during development:

```bash
claude --plugin-dir /path/to/claude-code-large-codebase-skill
```

Then use namespaced commands:

```text
/large-codebase-workflow:menu
/large-codebase-workflow:audit-large-codebase
/large-codebase-workflow:scaffold-claude
/large-codebase-workflow:refactor-claude-md
/large-codebase-workflow:map-codebase
/large-codebase-workflow:reduce-context-noise
/large-codebase-workflow:discover-validation
/large-codebase-workflow:large-codebase-rollout
```

The plugin also exposes the CLI helper on Claude Code's Bash `PATH` while enabled:

```bash
large-codebase-workflow menu
large-codebase-workflow doctor
```

## Standalone Install

Install all skills personally:

```bash
bin/large-codebase-workflow install-skills personal
```

Install all plain slash commands personally:

```bash
bin/large-codebase-workflow install-commands personal
```

Then restart Claude Code and use:

```text
/menu
/audit-large-codebase
/scaffold-claude
/refactor-claude-md
/map-codebase
/reduce-context-noise
/discover-validation
/large-codebase-rollout
```

For one project instead of your whole user profile:

```bash
bin/large-codebase-workflow install-skills project
bin/large-codebase-workflow install-commands project
```

## Optional Hooks

Install project hooks from the target repo root:

```bash
bin/large-codebase-workflow install-hooks project
```

The hooks are warnings, not hard blockers:

- `check-claude-md-size.sh`: warns when `CLAUDE.md` grows too large.
- `warn-generated-file-edit.sh`: warns when edited paths look generated, vendored, or build-produced.
- `suggest-local-claude-md.sh`: suggests local `CLAUDE.md` files for heavily edited areas.

Hook settings are merged into `.claude/settings.json` when Node.js is available. Otherwise, a settings example is copied for manual merge.

## CLI

Run the interactive menu:

```bash
bin/large-codebase-workflow menu
```

Useful non-interactive commands:

```bash
bin/large-codebase-workflow doctor
bin/large-codebase-workflow audit /path/to/repo
bin/large-codebase-workflow scaffold /path/to/repo
bin/large-codebase-workflow install-skills personal
bin/large-codebase-workflow install-commands personal
bin/large-codebase-workflow install-hooks project
bin/large-codebase-workflow plugin-command
```

`scaffold` creates starter `CLAUDE.md`, `CODEBASE_MAP.md`, and `.claude/settings.json` only when they are missing. It keeps existing files.

## Skill Composition

The umbrella skill coordinates the workflow:

```text
skills/large-codebase-setup/
```

Focused skills handle repeatable tasks:

```text
skills/large-codebase-audit/
skills/claude-md-architect/
skills/codebase-map-builder/
skills/context-noise-reducer/
skills/validation-command-discovery/
skills/team-rollout-planner/
```

This keeps each skill small and triggerable while still supporting an end-to-end setup flow.

## Contents

```text
.claude-plugin/
└── plugin.json
bin/
└── large-codebase-workflow
commands/
├── audit-large-codebase.md
├── discover-validation.md
├── large-codebase-rollout.md
├── map-codebase.md
├── menu.md
├── reduce-context-noise.md
├── refactor-claude-md.md
└── scaffold-claude.md
hooks/
├── check-claude-md-size.sh
├── hooks.json
├── suggest-local-claude-md.sh
└── warn-generated-file-edit.sh
skills/
├── claude-md-architect/
├── codebase-map-builder/
├── context-noise-reducer/
├── large-codebase-audit/
├── large-codebase-setup/
├── team-rollout-planner/
└── validation-command-discovery/
examples/
├── generated-client-heavy/
└── monorepo/
```

## Publish To GitHub

Create a GitHub repository and push this directory. Users can clone it and load it with `claude --plugin-dir`, or install the skills and commands into their user or project Claude Code folders.
