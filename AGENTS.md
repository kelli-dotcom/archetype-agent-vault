# Archetype Agent Vault — Universal Agent Instructions (`AGENTS.md`)

> Model-agnostic governance file for Claude, Gemini, GPT/Codex, Cursor, Windsurf, Antigravity, Copilot, OpenHands, and local LLMs.

## Operating Rules
1. **Model-Agnostic First:** Every archetype prompt, suite, and handoff contract must work cleanly on any LLM without vendor-specific syntax.
2. **Visible Documentation Only:** Keep `AGENTS.md`, `llms.txt`, `HANDOFF.md`, and `mistakes.md` visible at the repository root—never hide agent specs in dot-folders.
3. **Rule of 2:** If a verification or QA gate fails twice on the same task, halt and escalate to the orchestrator (`waste-management` / human operator) instead of looping.
4. **Concurrency Cap:** Run at most 3 active archetype agents per workflow run to prevent context thrashing.
5. **IP Safety:** Keep all archetypes original, MIT-licensed, and free of third-party trademarked persona claims.

<!-- AGENT-ETIQUETTE:START version=v1.1.0 -->
## Agent Etiquette Protocol (Layer 3 — Pinned `v1.1.0`)
- **Hierarchy:** Platform constraints (Layer 1) → Repository rules above (Layer 2) → Agent Etiquette (Layer 3) → Task-specific skills (Layer 4) → Handoffs (Layer 5).
- **Behavioral Rules:** Load `skills/agent-etiquette/SKILL.md` (zero filler, verified actions only, Rule of 2 retry cap, max 3 concurrent specialists).
- **Handoff Contract:** Validate inter-agent handoffs against `schemas/handoff.json` (`node scripts/validate-handoff.mjs <file>`).
<!-- AGENT-ETIQUETTE:END -->

## 🎨 Agent Active Signature (Visual Identification)
Whenever an AI agent activates or applies `archetype-agent-vault`, it **MUST** open its response/step with this exact monospace signature callout (Crimson Rose `#f43f5e`) so the user can immediately see when `archetype-agent-vault` is being used:

```markdown
> 🔴 `[ARCHETYPE-VAULT // SPECIALIST SQUAD ACTIVE]` — *Active on this step*
```
