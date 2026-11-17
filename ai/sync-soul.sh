#!/usr/bin/env bash
set -euo pipefail

AI_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
COMPILED="$AI_DIR/AGENTS.md"

# 1. Compile SOUL.md + RULES.md + LESSONS.md into a single master file
cat "$AI_DIR/SOUL.md" <(echo "") "$AI_DIR/RULES.md" <(echo "") "$AI_DIR/LESSONS.md" > "$COMPILED"
echo "[✓] Compiled master soul -> $COMPILED"

# Helper to create parent dir and symlink safely
link_soul() {
  local target="$1"
  local label="$2"
  mkdir -p "$(dirname "$target")"
  ln -sf "$COMPILED" "$target"
  echo "[✓] Linked $label -> $target"
}

# 2. Wire into all major coding agents
link_soul "$HOME/.config/opencode/AGENTS.md"       "OpenCode"
link_soul "$HOME/.codex/AGENTS.md"                 "Codex CLI"
link_soul "$HOME/.hermes/SOUL.md"                  "Hermes"
link_soul "$HOME/.claude/CLAUDE.md"                "Claude Code"
link_soul "$HOME/.gemini/config/rules/soul.md"     "Antigravity / Gemini"

echo "Done. All agents now share the same dark, minimal soul."
