# Settings And Noise Reduction

Use `.claude/settings.json` for version-controlled behavior that should apply to the team.

## Good deny candidates

Generated, vendored, and build output commonly create search noise:

- `node_modules/**`
- `dist/**`
- `build/**`
- `coverage/**`
- `.next/**`
- `.turbo/**`
- `target/**`
- `vendor/**`
- generated API clients, snapshots, lockfile mirrors, or compiled assets when they are not normally edited

Only deny generated files if developers do not commonly edit them. Code generator teams may need local overrides.

## Command policy

Prefer denying clearly dangerous commands over broad command families. Examples to consider:

- destructive git history rewrites
- recursive deletion of source directories
- production deploy commands
- commands that mutate shared infrastructure

Keep command policy aligned with the organization's normal review process. AI-generated code should go through the same review gates as human-generated code.

## Validation

- Ensure `.claude/settings.json` is valid JSON.
- Keep comments out of JSON files.
- Mention why each broad path rule exists in `CLAUDE.md` or nearby documentation if it is not obvious.
