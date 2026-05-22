# Repository Guide

Last reviewed: YYYY-MM-DD

## Purpose

Describe what this repository contains in one short paragraph.

## Navigation

- Start in the smallest package, service, or module relevant to the task.
- See `CODEBASE_MAP.md` for top-level directory purpose when unsure.
- Read nested `CLAUDE.md` files before changing files in that area.

## Global Commands

- Install: `TODO`
- Full test: `TODO`
- Full lint: `TODO`

Prefer local commands from nested `CLAUDE.md` files when changing one package or service.

## Critical Constraints

- TODO: Add security, compliance, release, generated-code, or migration constraints that apply repo-wide.

## Claude Code Setup

- Generated, vendored, and build output should be excluded from routine search where possible.
- Repeated task procedures belong in `.claude/skills/`, not in this root file.
