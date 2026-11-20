# Archetype Agent Vault

<!-- Run `vhs demo/demo.tape` to generate demo/preview.gif for your GitHub repo -->
![Archetype Agent Vault Demo](demo/preview.gif)

A modular, MIT-licensed library of personality-driven AI coding agents (`agents/*.md`), reusable workflow skills (`skills/*/SKILL.md`), root routing tables (`AGENTS.md`), and upgraded terminal effects (`scripts/fx.sh`).

Every suite is built around an unmistakable pop-culture archetype—packed with chat Easter eggs, ASCII badges, and strict engineering guardrails—while staying 100% original and safe to use in public or commercial projects.

## The Roster (7 Suites)

| Suite Folder | Lead Agent | Vibe & Core Job |
| :--- | :--- | :--- |
| `trojan-janitor/` | `janitor.md` | Acts clueless while vacuuming dead code, then drops the limp and goes 10x architect mode in emergencies. |
| `zero-mercy-gatekeeper/` | `gatekeeper.md` | Loud, intimidating PR gatekeeper who blocks sloppy commits and hardens fragile code. |
| `waste-management/` | `the-boss.md` | Decisive mob-style fixer for dead code disposal, merge conflicts, perf tuning, and zero-leak security. |
| `paranoia-pack/` | `red-flag.md` | The only agent paying attention—hunts silent failures, frozen states, and security red flags. |
| `laid-back-simplifier/` | `simplifier.md` | Brutally honest minimalist who cuts bloated code and runs fast pre-deploy sanity checks. |
| `booby-trap-defender/` | `defender.md` | Resourceful solo-dev defender who rigs the repo with edge-case tests and chaotic-user QA. |
| `redacted-veteran/` | `agent-v.md` | Deadpan veteran for log scrubbing, surgical performance fixes, and classified-style docs. |

Plus:
* `casting-director/SKILL.md` — Meta-skill to create new archetype agents and register them in `AGENTS.md` without trigger collisions.
* `crossover-starter/AGENTS.md` — Pre-wired router template mixing 4 archetypes in one repo.
* `scripts/fx.sh` — Auto-detects **`gum`** and **`tte`** for full terminal animations, with a zero-dependency ANSI fallback.
* `demo/demo.tape` — Ready-to-run **`vhs`** script to record a crisp GIF for your GitHub README.

## Quick Start

### Option 1: Drop a Full Suite into Your Repo
Copy the contents of any suite folder (e.g., `trojan-janitor/`) plus `scripts/fx.sh` into your project root:
```text
your-project/
├── AGENTS.md
├── agents/
├── skills/
└── scripts/fx.sh
```

### Option 2: Build a Crossover Repo (Recommended)
1. Copy `crossover-starter/AGENTS.md` to your project root.
2. Copy only the **3–5 agents** and **5–10 skills** you actually need from the vault.
3. Keep **one skill per job** so triggers never collide.

## Upgraded Terminal FX (`gum` + `tte` + `vhs`)

`scripts/fx.sh` works out of the box with zero dependencies, but automatically upgrades to full animations when `gum` and `tte` are installed:

```bash
# Optional: install the recommended FX stack (macOS / Linux)
brew install gum vhs
pipx install terminaltexteffects
```

Test the full showcase in your terminal:
```bash
chmod +x scripts/fx.sh
./scripts/fx.sh demo
```

Generate the animated GIF for your GitHub README:
```bash
vhs demo/demo.tape
```

---

✨ *Crafted with main-character energy by **CRTA*** • GitHub Topic: `crta-crafted`
