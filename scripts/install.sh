#!/usr/bin/env bash
set -euo pipefail

SUITE="${1:-crossover}"
TARGET="${2:-.}"
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

mkdir -p "$TARGET/agents" "$TARGET/skills" "$TARGET/scripts"
cp "$ROOT_DIR/scripts/fx.sh" "$TARGET/scripts/fx.sh"
chmod +x "$TARGET/scripts/fx.sh"

if [ "$SUITE" = "crossover" ]; then
  cp "$ROOT_DIR/crossover-starter/AGENTS.md" "$TARGET/AGENTS.md"
  cp "$ROOT_DIR/trojan-janitor/agents/janitor.md" "$TARGET/agents/"
  cp "$ROOT_DIR/zero-mercy-gatekeeper/agents/gatekeeper.md" "$TARGET/agents/"
  cp "$ROOT_DIR/waste-management/agents/the-boss.md" "$TARGET/agents/"
  cp "$ROOT_DIR/paranoia-pack/agents/red-flag.md" "$TARGET/agents/"
  mkdir -p "$TARGET/skills/casting-director"
  cp "$ROOT_DIR/casting-director/SKILL.md" "$TARGET/skills/casting-director/SKILL.md"
  echo "✓ Installed Crossover Starter (4 specialists + casting-director + fx.sh) into $TARGET"
else
  if [ ! -d "$ROOT_DIR/$SUITE" ]; then
    echo "Error: Unknown suite '$SUITE'. Available: crossover, trojan-janitor, zero-mercy-gatekeeper, waste-management, paranoia-pack, laid-back-simplifier, booby-trap-defender, redacted-veteran" >&2
    exit 1
  fi
  cp "$ROOT_DIR/$SUITE/AGENTS.md" "$TARGET/AGENTS.md"
  cp -R "$ROOT_DIR/$SUITE/agents/." "$TARGET/agents/"
  cp -R "$ROOT_DIR/$SUITE/skills/." "$TARGET/skills/"
  echo "✓ Installed suite '$SUITE' + fx.sh into $TARGET"
fi
