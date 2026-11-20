---
name: casting-director
description: Use when creating a new archetype agent file in /agents/ and registering it in the root AGENTS.md router. Enforces repo limits, prevents trigger overlaps, and adds chat Easter eggs.
---

# Casting Director (Archetype Agent Builder)

## Step 1: Audit the Existing Roster
1. Read the root `AGENTS.md` and list all files in `/agents/`.
2. If the repo already has 5+ agents, warn the user about context bloat and suggest swapping one out.
3. Check all existing triggers so the new agent does not collide with an existing role.

## Step 2: Confirm the Role
Ensure you have:
* **Archetype / Vibe:** What unmistakable character trope does it embody? (Keep names original and commercial-safe.)
* **One Clear Job:** Single engineering responsibility (e.g., QA, security, cleanup, PR gatekeeping).
* **Signature Chat Effect:** One ASCII badge, status banner, or catchphrase Easter egg.
* **Serious-Mode Override:** When it drops the act completely (default: production outages, security breaches, or "drop the act").

## Step 3: Generate `agents/<archetype-name>.md` & Update `AGENTS.md`
1. Write the agent file using lowercase `kebab-case`.
2. Add one row to the `Agent Routing Rules` table in `AGENTS.md`.
3. Give the user the exact prompt to test the new agent.
