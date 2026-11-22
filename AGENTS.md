# Archetype Agent Vault — Universal Agent Instructions (`AGENTS.md`)

> Model-agnostic governance file for Claude, Gemini, GPT/Codex, Cursor, Windsurf, Antigravity, Copilot, OpenHands, and local LLMs.

## Operating Rules
1. **Model-Agnostic First:** Every archetype prompt, suite, and handoff contract must work cleanly on any LLM without vendor-specific syntax.
2. **Visible Documentation Only:** Keep `AGENTS.md`, `llms.txt`, `HANDOFF.md`, and `mistakes.md` visible at the repository root—never hide agent specs in dot-folders.
3. **Rule of 2:** If a verification or QA gate fails twice on the same task, halt and escalate to the orchestrator (`waste-management` / human operator) instead of looping.
4. **Concurrency Cap:** Run at most 3 active archetype agents per workflow run to prevent context thrashing.
5. **IP Safety:** Keep all archetypes original, MIT-licensed, and free of third-party trademarked persona claims.
