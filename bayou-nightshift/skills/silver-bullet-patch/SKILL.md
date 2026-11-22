---
name: silver-bullet-patch
description: Minimal, surgical hotfix with regression test and zero unrelated diff noise.
---

# Skill: silver-bullet-patch

## Purpose
Minimal, surgical hotfix with regression test and zero unrelated diff noise.

## Workflow
1. Inspect the exact files and failure output first.
2. Apply the smallest verified change that solves the root cause.
3. Run tests/typecheck and report verified results concisely.
