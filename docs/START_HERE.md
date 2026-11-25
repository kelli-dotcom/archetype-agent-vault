# Start Here — One-Page Spec (`archetype-agent-vault`)

## 1. The idea
7 full-cast, 100% IP-safe AI coding agent suites (23 specialists), 4 extra packs, and a 500-archetype catalog with terminal FX and zero trigger collisions.

## 2. Who it is for
Developers, solo founders, and multi-agent builders who want strict engineering discipline (dead-code cleanup, security checks, PR gates, edge-case QA) with distinct, memorable specialist personas across any AI coding model.

## 3. What it does
- Ships 7 full-cast suites (`detroit-outsider`, `chemistry-perfectionist`, `bayou-nightshift`, `golden-road-guide`, `laid-back-simplifier`, `redacted-veteran`, `zero-mercy-gatekeeper`) and 4 extra packs (`booby-trap-defender`, `paranoia-pack`, `trojan-janitor`, `waste-management`).
- Provides a 500-archetype JSON catalog (`catalog/archetypes-500.json`) and `casting-director/` skill to cast a 3-agent squad for any dev task.
- Includes a live interactive Casting Director & 500-Archetype Explorer (`preview/index.html`) styled with `feather-themes` tokens.

## 4. What it does NOT do
- Never uses copyrighted movie/TV character names, studio franchises, or third-party trademarks.
- Never runs more than 3 concurrent specialists or bypasses Rule-of-2 verification gates.
- Never pulls in app-specific code (kit stays standalone and zero-dependency).

## 5. How to tell it works
Verify `catalog/archetypes-500.json` parses (`500` distinct entries, `ip_safe: true`) and run `node tests/smoke.test.mjs`.

## 6. What is left to do
1. Build and publish the live interactive Casting Director & 500-Archetype Explorer (`preview/index.html`) on GitHub Pages.
2. Add the Crimson cast banner (`demo/hero-banner.svg`) and link the live demo in `README.md`.
