#!/bin/sh
set -eux
set -o pipefail

SCRIPT=$(readlink -f "$0")
SCRIPT_DIR=$(dirname "$SCRIPT")
CODE_DIR=$(dirname "$SCRIPT_DIR")
WORKDIR=$(mktemp -d)
GH_PAGES_REPO="git@github.com:chaoswest-tv/chaoswest-tv.github.io.git"
GH_PAGES_BRANCH="master"

git clone --depth 1 -b "$GH_PAGES_BRANCH" "$GH_PAGES_REPO" "$WORKDIR"
cd "$WORKDIR"
mkdocs gh-deploy --config-file "$CODE_DIR/mkdocs.yml" --remote-branch "$GH_PAGES_BRANCH"
cd -
rm -rf "$WORKDIR"
