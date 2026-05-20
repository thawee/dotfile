# Contributing to Dotfiles Repository

## Purpose
This repository holds personal configuration files (dotfiles) to bootstrap a macOS development environment.

## How to Contribute
1. **Fork & clone** the repository.
2. **Create a new branch**: `git checkout -b feature/<short-name>`.
3. **Make changes** and run the provided scripts to verify (e.g., `./setup.sh`).
4. **Test**: Ensure all scripts run without errors and that configuration files are correctly installed.
5. **Commit** with a clear message.
6. **Open a PR** following the [pull‑request template](#).</n3>

## Coding Style & Linting
- Use `./setup.sh` to verify idempotency.
- Keep Bash scripts POSIX‑compatible; avoid hard‑coded paths.
- Update `Brewfile` with `brew bundle dump -f` after modifying dependencies.
- Add or update `CONTRIBUTING.md`, `CHANGELOG.md`, or `README.md` as needed.

## Pull‑Request Template
- Describe changes briefly.
- Link related issues if any.
- Mention any breaking changes or migration steps.
- Attach screenshots or logs if relevant.

---
©️ 2026 by thawee. MIT license.
