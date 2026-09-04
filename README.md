# Yuhan He's academic homepage

This Jekyll repository publishes <https://yhhe.top>. The authoritative rendered biography and publication content is `_pages/about.md`.

## New-agent entry point

1. Read [`docs/HANDOFF.md`](docs/HANDOFF.md) for the active worktree, branches and current status.
2. Read [`docs/PROJECT_MAP.md`](docs/PROJECT_MAP.md) before moving or deleting legacy files.
3. Use [`docs/OPERATIONS.md`](docs/OPERATIONS.md) for local build and cross-site release commands.

## Local development in WSL

```bash
cd /home/wsl_hyh/web/sime-chill.github.io
bundle install
./scripts/build.sh
./scripts/serve.sh
```

The theme is adapted from [AcadHomepage](https://github.com/RayeRen/acad-homepage.github.io); the upstream MIT notice remains in `LICENSE`. FAMA is maintained independently at `/fama/`; `/chipatlas/` is only a compatibility redirect.

Combined verification and release live at `/home/wsl_hyh/web/fama/tools/siteflow`. Real publishing requires explicit user confirmation.
