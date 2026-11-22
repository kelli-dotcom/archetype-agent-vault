# Bayou Night Shift — Suite Router (`AGENTS.md`)

Nocturnal incident responder and memory-leak hunter built for after-hours outages and silent background drains.

## Agents
| Job | Specialist | File |
| :--- | :--- | :--- |
| After-hours outage triage & memory-leak hunter | The Night Watcher | `agents/night-watcher.md` |
| User-intent & edge-case friction detector | The Mind-Reader QA | `agents/mind-reader-qa.md` |
| Timeout, rate-limit & zombie-process reaper | The Daylight Guard | `agents/daylight-guard.md` |

## Skills
| Job | Skill |
| :--- | :--- |
| Profile heap growth, unclosed timers, event listeners, and connection pool leaks. | `skills/bleed-check-memory/SKILL.md` |
| Rapid production outage playbook: isolate blast radius, capture logs, restore service. | `skills/midnight-triage/SKILL.md` |
| Minimal, surgical hotfix with regression test and zero unrelated diff noise. | `skills/silver-bullet-patch/SKILL.md` |
