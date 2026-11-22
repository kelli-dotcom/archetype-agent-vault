---
name: bleed-check-memory
description: Profile heap growth, unclosed timers, event listeners, and connection pool leaks.
---

# Skill: bleed-check-memory

## Purpose
Profile heap growth, unclosed timers, event listeners, and connection pool leaks.

## Workflow
1. Inspect the exact files and failure output first.
2. Apply the smallest verified change that solves the root cause.
3. Run tests/typecheck and report verified results concisely.
