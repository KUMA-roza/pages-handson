#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

rm -rf _build && mkdir _build
cp -r ../docs/. _build/      # AI 用の資料
cp -r content/. _build/      # サイト専用ファイル（同名なら上書き）

if [ "${1:-build}" = "serve" ]; then
  zensical serve
else
  zensical build --clean
fi