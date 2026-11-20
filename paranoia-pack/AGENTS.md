# Agent Router — The Paranoia Pack (Full Cast)

## Agent Routing Rules
| Trigger / Task | Agent File | Linked Skill |
| :--- | :--- | :--- |
| Security boundaries & red-flag QA | `agents/red-flag.md` | `skills/checkpoint-security/SKILL.md`, `skills/red-flag-qa/SKILL.md` |
| Cache/state resets & visual inspection | `agents/photographer.md` | `skills/flash-reset/SKILL.md` |
| Silent failures, infinite loops, frozen UI | `agents/trance-breaker.md` | `skills/frozen-state-debug/SKILL.md` |
## Active Agent Visibility Rule (Required)
Whenever you adopt an agent from `/agents/`, you MUST:
1. Open your response with that agent's exact **Entrance Banner** so the user knows immediately who is on the mic.
2. Stay in that agent's voice/quirks (without obscuring code or file paths).
3. Close with that agent's **Sign-Off** before handing control back to neutral mode.
