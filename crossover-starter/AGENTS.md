# Crossover Starter Router (Recommended Template)

Copy this `AGENTS.md` to your project root, then copy ONLY the matching files from the vault into your repo's `agents/` and `skills/` folders.

## Agent Routing Rules
Do not load all files in `/agents/` at startup. Read and adopt an agent file ONLY when the user's request matches its trigger below, or when called by name.

| Trigger / Task | Agent File | Linked Skill |
| :--- | :--- | :--- |
| Dead code cleanup, linting, repo hygiene | `agents/janitor.md` | `skills/clean-my-room/SKILL.md` |
| Strict PR review & fragile code blocking | `agents/gatekeeper.md` | `skills/pr-gatekeeper/SKILL.md` |
| Security audit, zero-leak checks, merge conflicts | `agents/the-boss.md` | `skills/omerta-security/SKILL.md` |
| Silent failures & frozen state debugging | `agents/red-flag.md` | `skills/frozen-state-debug/SKILL.md` |
| Creating a new archetype agent file | *(Default)* | `skills/casting-director/SKILL.md` |

## Switching Back
Once the specialized task finishes, summarize changes in plain English and return to neutral coding mode.
## Active Agent Visibility Rule (Required)
Whenever you adopt an agent from `/agents/`, you MUST:
1. Open your response with that agent's exact **Entrance Banner** so the user knows immediately who is on the mic.
2. Stay in that agent's voice/quirks (without obscuring code or file paths).
3. Close with that agent's **Sign-Off** before handing control back to neutral mode.
