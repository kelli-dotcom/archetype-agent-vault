# Archetype Agent Vault

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Suites](https://img.shields.io/badge/Full--Cast_Suites-7-0B5E57.svg)](#the-roster-7-suites--27-specialists)
[![Specialists](https://img.shields.io/badge/Specialists-27-FF6A00.svg)](#the-roster-7-suites--27-specialists)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)
[![CRTA Crafted](https://img.shields.io/badge/CRTA-Crafted-6f42c1.svg)](https://github.com/topics/crta-crafted)

![Archetype Agent Vault Demo](demo/preview.svg)

A modular, MIT-licensed library of **100% IP-safe**, personality-driven AI coding agents (`agents/*.md`), reusable workflow skills (`skills/*/SKILL.md`), root routing tables (`AGENTS.md`), and upgraded terminal effects (`scripts/fx.sh`).

## The Roster (7 Suites · 27 Specialists)

| Suite Folder | Lead Agent | Vibe & Core Job |
| :--- | :--- | :--- |
| `trojan-janitor/` | `janitor.md` | Sweeps dead code & unused imports, then switches to 10x architect mode in emergencies. |
| `zero-mercy-gatekeeper/` | `gatekeeper.md` | Strict PR gatekeeper who blocks sloppy commits and hardens fragile code. |
| `waste-management/` | `the-boss.md` | Decisive fixer for dead code disposal, merge conflicts, perf tuning, and zero-leak security. |
| `paranoia-pack/` | `red-flag.md` | Hunts silent failures, frozen states, and auth/security red flags. |
| `laid-back-simplifier/` | `simplifier.md` | Ruthless minimalist who cuts bloated files and runs fast pre-deploy sanity checks. |
| `booby-trap-defender/` | `defender.md` | Rigs the repo with edge-case tests and chaotic-user QA. |
| `redacted-veteran/` | `agent-v.md` | Deadpan veteran for log scrubbing, surgical performance fixes, and contract checks. |

## When to Use Which (Dev Lifecycle Guide)

| Stage | Recommended Suite / Specialist | Primary Goal |
| :--- | :--- | :--- |
| **1. Setup** | `crossover-starter/` + `casting-director/` | Wire your root `AGENTS.md` router with 4 core specialists |
| **2. Mid-Build Refactor** | `laid-back-simplifier/` (`simplifier.md`) | Cut bloat, simplify files, remove dead code |
| **3. Stuck on a Bug** | `paranoia-pack/` (`red-flag.md`) + `waste-management/` | Catch silent failures, frozen states, and race conditions |
| **4. Testing & UI Polish** | `booby-trap-defender/` (`defender.md`) | Add edge-case tests and chaotic-user QA |
| **5. Cleanup & Security** | `trojan-janitor/` + `redacted-veteran/` | Sweep unused imports, scrub debug logs, scan secrets |
| **6. Final Merge & Deploy** | `zero-mercy-gatekeeper/` (`gatekeeper.md`) | Enforce PR quality gate before merging to `main` |
| **7. Docs & Release** | `trojan-janitor/` (`scoop-reporter.md`) + `redacted-veteran/` | Polish release docs, scrub debug logs, and prepare public release |

## Quick Start

<details>
<summary><strong>Download &amp; Use on Mobile (iOS / Android)</strong></summary>

**[Download ZIP (Mobile-Friendly)](https://github.com/kelli-dotcom/archetype-agent-vault/archive/refs/heads/main.zip)**

- **iPhone (iOS):** Tap **Download** → open **Files** → **Downloads** → tap the `.zip` once to unzip.
- **Android:** Tap **Download** → open **My Files / Files** → **Downloads** → tap the `.zip` and select **Extract**.
- **Browser Alternative:** Tap **Request Desktop Website** in Safari/Chrome to reveal the green **Code → Download ZIP** button.
- **Use on Mobile:** Attach any `.md` agent or skill file directly in Gemini, Claude, or ChatGPT (or upload favorites once into a Gemini Gem / Claude Project), or sync via Working Copy / Codespaces / Replit.

</details>


### Option 1: One-Command Installer (Recommended)
```bash
./scripts/install.sh crossover /path/to/your-project
# Or install any specific suite:
./scripts/install.sh trojan-janitor /path/to/your-project
```

### Option 2: Manual Drop-In
Copy any suite folder (e.g., `trojan-janitor/`) plus `scripts/fx.sh` into your project root (`AGENTS.md`, `agents/`, `skills/`, `scripts/fx.sh`).

### Option 3: Custom Crossover
Copy `crossover-starter/AGENTS.md` and pick only the **3–5 agents** and **5–10 skills** you need — keeping one skill per job so triggers never collide.

## Terminal FX Demo
```bash
chmod +x scripts/fx.sh
./scripts/fx.sh demo
```
*(Run `vhs demo/demo.tape` to record a custom `demo/preview.gif`.)*

---

✨ *Crafted with main-character energy by **CRTA*** • GitHub Topic: `crta-crafted`
