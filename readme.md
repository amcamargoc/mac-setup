# Setup & AI Soul

Personal machine bootstrap (`console.sh`, `desktop-apps.sh`, `.zshrc`, `languages/`) + a unified **AI Soul** that syncs the same tone, rules, and long-term memory across every coding agent.

## AI Soul (`ai/`)

- [`ai/SOUL.md`](ai/SOUL.md) — Voice, tone (super direct, minimal, dry/dark humor, zero corporate fluff), and anti-sycophancy rules.
- [`ai/RULES.md`](ai/RULES.md) — Operational guardrails (explain commands before running, minimal diffs, verify first).
- [`ai/LESSONS.md`](ai/LESSONS.md) — Living log of long-term preferences and mistakes not to repeat.
- [`ai/sync-soul.sh`](ai/sync-soul.sh) — Compiles `SOUL.md + RULES.md + LESSONS.md` into `ai/AGENTS.md` and symlinks it into:
  - **OpenCode**: `~/.config/opencode/AGENTS.md`
  - **Codex CLI**: `~/.codex/AGENTS.md`
  - **Hermes**: `~/.hermes/SOUL.md`
  - **Claude Code**: `~/.claude/CLAUDE.md`
  - **Antigravity / Gemini**: `~/.gemini/config/rules/soul.md`

### Sync Across All Agents

```bash
./ai/sync-soul.sh
```
