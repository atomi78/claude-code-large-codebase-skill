# CLAUDE.md Patterns

Use `CLAUDE.md` for context Claude should see automatically. Keep it short because it loads every session.

## Root CLAUDE.md should contain

- One-paragraph repository purpose.
- High-level map or pointer to `CODEBASE_MAP.md`.
- Global architecture constraints and non-obvious gotchas.
- Root-level commands that are safe and broadly useful.
- Pointers to package/service-specific instructions.
- Required review, security, or compliance constraints.

## Root CLAUDE.md should not contain

- Long task procedures.
- Detailed API docs.
- Complete service ownership tables.
- Commands that only apply to one subdirectory.
- Model-specific workarounds without a review date.

Move those to subdirectory `CLAUDE.md`, project skills, or reference docs.

## Subdirectory CLAUDE.md should contain

- What this directory owns.
- Local architecture and dependency boundaries.
- Local commands for install, test, lint, build, codegen, and verification.
- Common failure modes and local gotchas.
- Links to domain docs or skills.

## Maintenance pattern

- Add a `Last reviewed: YYYY-MM-DD` line for non-obvious constraints.
- Revisit instructions every 3 to 6 months and after major model/tooling upgrades.
- Remove instructions that compensate for limitations no longer present.
