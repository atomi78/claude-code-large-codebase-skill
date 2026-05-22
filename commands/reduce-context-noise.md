---
description: Recommend or apply Claude Code noise reductions
argument-hint: [path or focus]
allowed-tools: Read, Grep, Glob, LS, Bash, Edit, MultiEdit, Write
---

# Reduce Context Noise

Use the `context-noise-reducer` skill.

Inspect generated, vendored, build, cache, binary, and coverage paths. Recommend or apply narrow `.claude/settings.json` `permissions.deny` rules only where they will not block legitimate source edits.

Validate JSON before finishing.
