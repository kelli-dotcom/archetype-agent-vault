# Archetype Agent Vault — Fractal Agent Contract (`AGENTS.md`)

- **Pillar:** CRTA Tech Solutions (Public MIT Open-Source Toolkit)
- **North Star:** 12 IP-safe full-cast AI specialist suites and a 500-archetype catalog with zero trigger collisions across all coding models.

## Hard Phase Locks & Guardrails
- **IP Safety:** Keep all archetypes 100% original, MIT-licensed, and free of third-party trademarked character names or assets.
- **Multi-Agent Caps:** Max **3 active specialists** per run; **Rule of 2** halts and escalates to `waste-management` (`The Boss`) after 2 QA failures.
- **Visible Docs Only:** Keep `AGENTS.md`, `llms.txt`, `HANDOFF.md`, and `mistakes.md` visible at the repository root.

## Stack, Entry Points & Verification
- **Stack:** Shell scripts, JSON catalog (`500` archetypes), model-agnostic Markdown suites.
- **Entry Points:** `catalog/archetypes-500.json`, `catalog/INDEX.md`, `scripts/scaffold-from-catalog.sh`, `<suite>/AGENTS.md`.
- **Verification:** Validate `catalog/archetypes-500.json` parses cleanly (`node -e "JSON.parse(require('fs').readFileSync('catalog/archetypes-500.json','utf8'))"`).

## Pointers
- State & Index: [`HANDOFF.md`](HANDOFF.md) · [`mistakes.md`](mistakes.md) · [`llms.txt`](llms.txt)
- Active Signature: `> 🔴 **𝕬𝕽𝕮𝕳𝕰𝕿𝖄𝕻𝕰-𝖁𝕬𝖀𝕷𝕿** · \`SPECIALIST SQUAD ACTIVE\` — *Active on this step*`

## 4-Stage Loop
1. **Frame:** Select only the specialist suite needed for the active phase.
2. **Bridge:** Enforce zero trigger collisions, Rule of 2, and IP safety.
3. **Proof:** Verify catalog JSON validity and suite scaffold output.
4. **Push-Off:** Update `HANDOFF.md` and return verified artifacts to the orchestrator.

## Live State & Next Action
- **State:** 12 suites + 500-archetype catalog live on GitHub.
- **Next Action:** Keep suite `AGENTS.md` files aligned with the 4-stage fractal loop.
