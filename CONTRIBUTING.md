# Contributing to Archetype Agent Vault (`CONTRIBUTING.md`)

Thank you for contributing to **Archetype Agent Vault**! Both **human builders** and **AI coding agents** across all models are welcome to contribute new IP-safe specialist suites, workflow skills, and verification checklists.

---

## 1. High-Impact Ways to Contribute
- **New Character-Driven Archetype Suites:** Scaffold new domain specialists using `casting-director/` with clear folder ownership and zero trigger collisions.
- **Cross-Repo Squad Blueprints (`crossover-starter/`):** Add tested 3-agent squad combinations for new stack tiers.
- **Model-Agnostic Refinements:** Ensure every prompt and checklist runs cleanly across Claude, Gemini, GPT/Codex, Cursor, Windsurf, Antigravity, Copilot, OpenHands, and local LLMs.

## 2. Human & AI Agent Guardrails (`AGENTS.md` + `llms.txt`)
- **Strict IP-Safe Originality:** Zero movie/TV titles, copyrighted character names, or verbatim quotes. Use original archetype names and coding-native action hooks only.
- **One Skill Per Job:** Ensure trigger descriptions never collide across suites.
- **Rule of 2 & 3-Agent Cap:** Every multi-agent workflow must enforce a max 3-agent concurrency cap and halt after 2 failed verification retries.

## 3. 60-Second Verification Gate (Required Before Every PR)
```bash
ls -la AGENTS.md HANDOFF.md mistakes.md llms.txt CONTRIBUTING.md
```

## 4. 3-Step Pull Request Workflow
1. **Fork & Branch:** `git checkout -b feat/your-archetype-or-fix`
2. **Verify Trigger Uniqueness & IP Safety:** Confirm zero copyrighted references and clean Markdown structure.
3. **Submit a Pull Request:** Complete the checklist in `.github/pull_request_template.md`. *(Can be edited directly on mobile or desktop via the GitHub web UI.)*

## 5. IP Safety & MIT License
All contributions must be original clean-room work and are licensed under the repository's [MIT License](LICENSE).
