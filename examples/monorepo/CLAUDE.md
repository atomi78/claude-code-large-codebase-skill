# Repository Guide

Last reviewed: 2026-05-22

## Purpose

Example monorepo containing web apps, shared packages, and backend services.

## Navigation

- Start in the smallest app, package, or service relevant to the task.
- See `CODEBASE_MAP.md` for top-level ownership.
- Read nested `CLAUDE.md` files before editing an app or service.

## Global Commands

- Install: `pnpm install`
- Full test: `pnpm test`
- Full lint: `pnpm lint`

Prefer workspace-scoped commands for small changes.

## Claude Code Setup

- Keep generated clients, build output, and coverage out of routine search.
- Move repeated task procedures into project skills.
