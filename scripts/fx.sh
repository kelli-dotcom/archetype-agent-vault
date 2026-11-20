#!/usr/bin/env bash
# Upgraded Terminal FX for Archetype Agent Vault
# Automatically uses `tte` (TerminalTextEffects) and `gum` (Charmbracelet) if installed,
# and falls back gracefully to zero-dependency ANSI colors.
#
# Usage: ./scripts/fx.sh <effect_name>
# Tip:   Run `FX_MODE=ansi ./scripts/fx.sh <effect>` to force plain ANSI mode.

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
RESET='\033[0m'

HAS_TTE=0
HAS_GUM=0
if [ "${FX_MODE:-auto}" != "ansi" ]; then
  command -v tte >/dev/null 2>&1 && HAS_TTE=1
  command -v gum >/dev/null 2>&1 && HAS_GUM=1
fi

run_effect() {
  case "$1" in
    vacuum)
      if [ "$HAS_GUM" -eq 1 ]; then
        gum spin --spinner meter --title "🧹 DO NOT DISTURB — Vacuuming dead code & unused imports..." -- sleep 1.2
        gum style --border rounded --border-foreground 82 --foreground 82 --padding "0 2" "[ ✓ ] Room is spotless. 🚗💨"
      else
        echo -e "${YELLOW}[ 🧹 DO NOT DISTURB ] Sweeping dead code & unused imports...${RESET}"
        for i in 1 2 3 4 5; do
          printf "\r${CYAN}[🧹%s%s]${RESET}" "$(printf '=%.0s' $(seq 1 $((i*3))))" "$(printf ' %.0s' $(seq 1 $((15-i*3))))"
          sleep 0.15
        done
        echo -e "\n${GREEN}[ ✓ ] Room is spotless. 🚗💨${RESET}"
      fi
      ;;

    drop_act)
      printf "\a"
      BANNER="──────────────────────────────────────────────────────
[ 🕶️  ACT DROPPED // LIMP: OFF // 10X ARCHITECT MODE ]
──────────────────────────────────────────────────────"
      if [ "$HAS_TTE" -eq 1 ]; then
        printf "%s\n" "$BANNER" | tte laseretch
      elif [ "$HAS_GUM" -eq 1 ]; then
        gum style --border double --border-foreground 196 --foreground 196 --bold --padding "0 2" \
          "[ 🕶️  ACT DROPPED // LIMP: OFF // 10X ARCHITECT MODE ]"
      else
        echo -e "${RED}${BANNER}${RESET}"
      fi
      ;;

    gate_locked)
      if [ "$HAS_GUM" -eq 1 ]; then
        gum style --border thick --border-foreground 196 --foreground 214 --bold --padding "0 2" \
          "[ 🛑 HOW YOU DOIN' — PR GATE LOCKED ]" \
          "Fix every flagged issue before attempting to merge."
      else
        echo -e "${RED}[ 🛑 HOW YOU DOIN' — PR GATE LOCKED ]${RESET}"
        echo -e "${YELLOW}Fix every flagged issue before attempting to merge.${RESET}"
      fi
      ;;

    omerta)
      MSG="[ 🔇 OMERTÀ SECURITY SCAN ]
Secrets status: ██████████ [ REDACTED & SAFE ]"
      if [ "$HAS_TTE" -eq 1 ]; then
        printf "%s\n" "$MSG" | tte decrypt
      elif [ "$HAS_GUM" -eq 1 ]; then
        gum style --border double --border-foreground 255 --foreground 82 --padding "0 2" \
          "[ 🔇 OMERTÀ SECURITY SCAN ]" \
          "Secrets status: ██████████ [ REDACTED & SAFE ]"
      else
        echo -e "${WHITE}[ 🔇 OMERTÀ SECURITY SCAN ]${RESET}"
        echo -e "Secrets status: ${GREEN}██████████ [ REDACTED & SAFE ]${RESET}"
      fi
      ;;

    flash_reset)
      MSG="[ 📸 FLASH RESET ] Stale caches & frozen state cleared."
      if [ "$HAS_TTE" -eq 1 ]; then
        printf "%s\n" "$MSG" | tte beams
      elif [ "$HAS_GUM" -eq 1 ]; then
        gum style --border rounded --border-foreground 51 --foreground 51 --padding "0 2" "$MSG"
      else
        echo -e "${CYAN}[ 📸 FLASH RESET ]${RESET} Stale caches & frozen state cleared."
      fi
      ;;

    traps_armed)
      MSG="[ 🪤 TRAPS ARMED ] Edge-case tests & input guards active."
      if [ "$HAS_GUM" -eq 1 ]; then
        gum style --border double --border-foreground 82 --foreground 82 --padding "0 2" "$MSG"
      else
        echo -e "${GREEN}[ 🪤 TRAPS ARMED ]${RESET} Edge-case tests & input guards active."
      fi
      ;;

    neuralyzer)
      MSG="[ ⚡ MEMORY WIPE COMPLETE ] Debug logs & console artifacts scrubbed."
      if [ "$HAS_TTE" -eq 1 ]; then
        printf "%s\n" "$MSG" | tte crumble
      elif [ "$HAS_GUM" -eq 1 ]; then
        gum style --border rounded --border-foreground 51 --foreground 51 --padding "0 2" "$MSG"
      else
        echo -e "${CYAN}[ ⚡ MEMORY WIPE ]${RESET} Debug logs & console artifacts scrubbed."
      fi
      ;;

    demo)
      run_effect vacuum
      sleep 0.6
      run_effect gate_locked
      sleep 0.6
      run_effect omerta
      sleep 0.6
      run_effect drop_act
      ;;

    *)
      echo "Available effects: vacuum | drop_act | gate_locked | omerta | flash_reset | traps_armed | neuralyzer | demo"
      ;;
  esac
}

run_effect "$1"
