---
name: team-rollout-planner
description: Plan Claude Code rollout and governance for teams using large repositories. Use when the user asks about adoption, ownership, review cadence, shared skills, plugin distribution, hooks, LSP, MCP, permissions, or organizational standards.
allowed-tools: Read Grep Glob LS Bash Edit MultiEdit Write
---

# Team Rollout Planner

Treat Claude Code setup as maintained developer infrastructure.

## Plan Order

1. Make one representative repo navigable with root context, local context, scoped commands, and exclusions.
2. Convert repeated task procedures into focused skills.
3. Add hooks for deterministic warnings and checks.
4. Package shared skills, commands, hooks, and binaries into a plugin.
5. Add LSP where symbol navigation reduces search noise.
6. Add MCP servers for internal systems only after the local repo workflow is stable.
7. Use subagents for bounded exploration once the base harness is reliable.

## Governance Questions

- Who owns shared skills and plugins?
- Which commands require human approval?
- Which generated/vendor paths can be denied globally?
- What review and security gates remain mandatory?
- How are team overrides handled?
- How often are model-era workarounds removed?

## Output

Produce a practical rollout plan with owners, phases, risks, and first-week actions.
