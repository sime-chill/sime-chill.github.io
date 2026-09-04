#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
destination="${1:-/tmp/yhhe-personal-site-build}"

cd "$repo_dir"
bundle exec jekyll build --destination "$destination"
printf 'Built personal site at %s\n' "$destination"
