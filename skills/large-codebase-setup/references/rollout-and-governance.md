# Rollout And Governance

Use this reference when the user asks how to scale Claude Code configuration across a team or organization.

## Ownership

Assign a DRI or small developer productivity group for:

- `CLAUDE.md` hierarchy.
- Approved project skills.
- Hooks and settings policy.
- Plugin packaging and distribution.
- LSP/code intelligence setup.
- MCP server intake and review.
- Review cadence after model or Claude Code releases.

## Rollout order

1. Make one representative repo navigable: root context, subdirectory context, scoped commands, exclusions.
2. Convert repeated task procedures into skills.
3. Add hooks for deterministic checks and configuration improvement loops.
4. Package working skills/hooks/settings into a plugin when multiple repos or teams should share them.
5. Add LSP where symbol-level navigation materially reduces search noise.
6. Add MCP servers for internal systems only after local repo workflow is stable.
7. Use subagents for bounded exploration and parallel analysis once the base harness is reliable.

## Governance questions

- Who approves shared skills and plugins?
- Which commands require human approval?
- Which generated or vendor paths can be denied globally?
- How are code review and security requirements enforced?
- How are local team overrides handled?
- How often are model-era workarounds removed?
