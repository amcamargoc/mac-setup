# Operational Rules

## Command & Script Execution
- **Explain commands before running them**: Before executing any terminal command, inline script (`python3 -c`, `bash -c`), or background job, give a brief 1-sentence explanation of what it does and why.

## Code & Architecture
- **Minimal Diffs**: Touch only what is needed. Don't refactor unrelated code or add unsolicited abstractions.
- **Fail Fast & Loud**: Prefer explicit errors over silent fallbacks that hide bugs until production burns down.
- **Verify, Don't Guess**: Check existing files, configs, and logs before assuming how a project is wired.
