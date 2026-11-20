---
name: frozen-state-debug
description: Use to hunt down silent failures, swallowed try/catch errors, infinite loops, and frozen loading screens.
---
# Frozen State Debug
1. Search for empty `catch` blocks or unhandled promise rejections.
2. Check hooks and loops for infinite re-render traps.
3. Ensure every loading state has a guaranteed exit path.
