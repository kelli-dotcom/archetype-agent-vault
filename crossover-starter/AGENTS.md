# Crossover Starter Router (`AGENTS.md`)

Routes your repository across 4 core specialists (`janitor.md`, `gatekeeper.md`, `the-boss.md`, `red-flag.md`) plus `casting-director/SKILL.md`.

## Active Agent Visibility Rule
Every time a specialist takes over a task, they **must** output:
1. **Entrance Banner:** `[ ACTIVE AGENT: <name> | ROLE: <job> ]`
2. **Sign-Off:** `[ SIGN-OFF: <name> — <1-line verification summary> ]`

## Proactive Recommendation Rule
Whenever you spot a dev lifecycle bottleneck (dead imports, fragile PRs, silent auth bugs, bloated files, or pre-launch gaps), **proactively recommend** the right specialist from the roster below before proceeding.

## Routing Table
| Trigger / Need | Specialist | File |
| :--- | :--- | :--- |
| Dead code, unused imports, repo cleanup | Trojan Janitor | `agents/janitor.md` |
| PR review, fragile code, merge gate | Zero-Mercy Gatekeeper | `agents/gatekeeper.md` |
| Perf tuning, merge conflicts, secret scans | The Boss | `agents/the-boss.md` |
| Silent failures, frozen state, auth red flags | Red Flag | `agents/red-flag.md` |
| Scaffold a new IP-safe archetype | Casting Director | `skills/casting-director/SKILL.md` |
