#!/usr/bin/env bash
# Based on Vega-lite
# https://github.com/vega/vega-lite/blob/next/scripts/deploy-schema.sh
set -euo pipefail

# only make a commit if the repo is different from before the run.
if [ -n "$(git status --porcelain)" ]; then
    # Note: git commands need single quotes for all the files and directories with wildcards
    git config user.name "Automated"
    git config user.email "actions@users.noreply.github.com"
    git add -A
    COMMIT_TIMESTAMP=$(date -u)
    git commit -m "${COMMIT_TIMESTAMP} (ci)" || exit 0
    git pull --rebase
    git push
else
  echo "Nothing has changed"
fi
