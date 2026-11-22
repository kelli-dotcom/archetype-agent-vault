#!/usr/bin/env bash
set -euo pipefail

SLUG="${1:-}"
TARGET="${2:-.}"
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CATALOG="$ROOT_DIR/catalog/archetypes-500.json"

if [ -z "$SLUG" ] || [ "$SLUG" = "--list" ]; then
  python3 -c '
import json, sys
data = json.load(open(sys.argv[1]))
print(f"Total catalog archetypes: {data[\"count\"]}")
for item in data["archetypes"][:20]:
    print(f"  {item[\"slug\"]:34s} | {item[\"category_label\"]:22s} | {item[\"primary_job\"]}")
print("  ... see catalog/INDEX.md for all 500 slugs.")
' "$CATALOG"
  exit 0
fi

python3 - "$CATALOG" "$SLUG" "$TARGET" <<'PYEOF'
import json, os, sys
catalog_path, slug, target = sys.argv[1], sys.argv[2], sys.argv[3]
data = json.load(open(catalog_path, encoding="utf-8"))
match = next((x for x in data["archetypes"] if x["slug"] == slug), None)
if not match:
    sys.stderr.write(f"Error: Unknown catalog slug '{slug}'. See catalog/INDEX.md.\n")
    sys.exit(1)

os.makedirs(os.path.join(target, "agents"), exist_ok=True)
os.makedirs(os.path.join(target, "skills", f"{slug}-workflow"), exist_ok=True)

agents_md = (
    f"# {match['name']} — Suite Router (`AGENTS.md`)\n\n"
    f"- **Category:** {match['category_label']}\n"
    f"- **Primary Job:** {match['primary_job']}\n\n"
    f"| Trigger | File |\n| :--- | :--- |\n"
    f"| {match['primary_job']} | `agents/{slug}.md` |\n"
    f"| Reusable workflow | `skills/{slug}-workflow/SKILL.md` |\n"
)
with open(os.path.join(target, "AGENTS.md"), "w", encoding="utf-8") as f:
    f.write(agents_md)

agent_file = (
    f"# Agent: {match['name']}\n\n"
    f"## Role & Scope\n"
    f"- **Category:** {match['category_label']}\n"
    f"- **Primary Job:** {match['primary_job']}\n\n"
    f"## Active Chat Banner\n"
    f"- **Entrance:** `{match['entrance_banner']}` *\"{match['hook']}\"*\n"
    f"- **Sign-Off:** `{match['sign_off']}` *\"Verified and complete.\"*\n\n"
    f"## Guardrails\n"
    f"- Inspect before editing; verify every claim with direct tool output.\n"
    f"- 100% original, IP-safe coding-native voice.\n"
)
with open(os.path.join(target, "agents", f"{slug}.md"), "w", encoding="utf-8") as f:
    f.write(agent_file)

skill_file = (
    f"---\nname: {slug}-workflow\n"
    f"description: Execute {match['primary_job']} using the {match['name']} specialist protocol.\n---\n\n"
    f"# Skill: {slug}-workflow\n\n"
    f"## Workflow\n"
    f"1. Inspect target files and current state.\n"
    f"2. Execute {match['primary_job']} with minimal, clean diffs.\n"
    f"3. Verify with tests/checks and report exact output.\n"
)
with open(os.path.join(target, "skills", f"{slug}-workflow", "SKILL.md"), "w", encoding="utf-8") as f:
    f.write(skill_file)

print(f"✓ Scaffolded '{slug}' ({match['name']}) into {target}")
PYEOF
