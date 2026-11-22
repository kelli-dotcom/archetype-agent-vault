---
name: home-deploy
description: Pre-release smoke test, changelog check, and clean rollback verification.
---

# Skill: home-deploy

## Purpose
Pre-release smoke test, changelog check, and clean rollback verification.

## Workflow
1. Inspect the exact files and failure output first.
2. Apply the smallest verified change that solves the root cause.
3. Run tests/typecheck and report verified results concisely.
