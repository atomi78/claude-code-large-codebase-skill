---
name: large-codebase-setup
description: Audit and improve Claude Code setup for large repositories, monorepos, legacy systems, or multi-service codebases. Use when the user wants better CLAUDE.md layering, scoped test/build commands, codebase maps, .claude/settings.json exclusions, skills/plugin organization, LSP readiness, subagent usage, or governance for Claude Code adoption at scale.
when_to_use: Trigger for requests like "make this repo easier for Claude Code", "set up Claude for our monorepo", "audit our CLAUDE.md", "create codebase maps", "scope validation commands", "reduce Claude context noise", "prepare Claude Code rollout", or "turn large-codebase best practices into repo configuration".
allowed-tools: Read Grep Glob LS Bash Edit MultiEdit Write
---

# Large Codebase Setup

Use this umbrella skill to coordinate the focused large-codebase workflow skills. Optimize for live repository facts over broad instructions.

## Prefer focused skills

When the user's request maps cleanly to one task, use the focused skill:

- `large-codebase-audit`: assess Claude Code readiness without editing.
- `claude-md-architect`: create or refactor layered `CLAUDE.md` files.
- `codebase-map-builder`: build or update `CODEBASE_MAP.md`.
- `context-noise-reducer`: tune `.claude/settings.json` and noisy path exclusions.
- `validation-command-discovery`: find scoped test, lint, typecheck, build, and codegen commands.
- `team-rollout-planner`: plan adoption, ownership, plugin distribution, hooks, LSP, MCP, and governance.

Use this umbrella skill when the user asks for the whole setup, an end-to-end workflow, or is unsure where to start.

## Operating principles

- Prefer layered, sparse context over one large root instruction file.
- Put always-relevant facts in `CLAUDE.md`; put specialized procedures in skills.
- Start from the user's working directory or the most relevant subdirectory, then walk upward for shared context.
- Scope validation commands to the smallest changed package, service, or module that gives meaningful confidence.
- Exclude generated, vendored, build, cache, and third-party code unless the task is about those files.
- Use codebase maps when directory names alone do not explain ownership or purpose.
- Recommend LSP/code intelligence for typed or multi-language codebases where grep returns too many false positives.
- Use subagents for bounded exploration, mapping, or parallel read-only research; keep editing decisions in the main session unless the user asks for parallel implementation.
- Treat Claude Code configuration as maintained infrastructure. Prefer dated review notes and ownership over one-off setup.

## Workflow

1. Classify the repository shape:
   - Monorepo, multi-repo workspace, service repo, legacy tree, generated-code-heavy repo, or mixed.
   - Primary languages, package managers, build systems, and test runners.
   - Top-level areas that represent products, services, packages, tools, docs, generated output, or vendor code.

2. Inventory current Claude Code harness:
   - Find existing `CLAUDE.md`, `.claude/settings.json`, `.claude/skills/**/SKILL.md`, hooks, plugin files, and documented test/build commands.
   - Note whether current instructions are root-global facts, local conventions, or task procedures that should become skills.

3. Identify navigation bottlenecks:
   - Missing root map or unclear top-level directory purpose.
   - Root `CLAUDE.md` too long, too procedural, stale, or filled with local-only conventions.
   - Subdirectories lacking local commands or ownership notes.
   - Generated/vendor/build files not excluded.
   - Ambiguous symbols where LSP would reduce search noise.

4. Propose or apply focused changes:
   - Root `CLAUDE.md`: only repo overview, critical gotchas, pointers, and global commands.
   - Subdirectory `CLAUDE.md`: local architecture, conventions, commands, and risk areas.
   - `CODEBASE_MAP.md`: top-level map when structure is not self-explanatory.
   - `.claude/settings.json`: version-controlled `permissions.deny` for noisy paths and dangerous commands.
   - Project skills: reusable task procedures that should load on demand.
   - Hooks: deterministic checks or self-improvement prompts that should run automatically.

5. Validate the result:
   - Confirm files are syntactically valid Markdown/JSON.
   - Verify commands mentioned in `CLAUDE.md` exist in package scripts, Makefiles, CI config, or local docs where possible.
   - Keep examples short and remove speculative instructions.

6. Report:
   - What changed.
   - Which areas still need a code owner or domain expert.
   - Suggested next harness investments in order: CLAUDE.md and settings, scoped skills, hooks, plugin packaging, LSP, MCP, subagents.

## What to create

Read only the reference file that matches the task:

- `references/audit-checklist.md`: use before editing or when the user asks for an assessment.
- `references/claude-md-patterns.md`: use when creating or refactoring root/subdirectory `CLAUDE.md`.
- `references/settings-and-noise.md`: use when editing `.claude/settings.json` or recommending exclusions.
- `references/rollout-and-governance.md`: use when the user asks about team adoption, ownership, or packaging as plugins.

Templates are available in `templates/`:

- `root-CLAUDE.md`
- `subdir-CLAUDE.md`
- `CODEBASE_MAP.md`

Copy template structure only when useful. Replace placeholders with repository facts from live inspection.

## Guardrails

- Do not invent commands, ownership, services, or conventions. Mark unknowns explicitly.
- Do not place long checklists or specialized workflows in root `CLAUDE.md`; create or suggest skills instead.
- Do not add broad deny rules that block legitimate source edits.
- Do not remove existing user or team instructions unless they are clearly duplicated, stale, or moved with equivalent coverage.
- Ask before making destructive changes or enforcing new hooks that could block developer workflows.
