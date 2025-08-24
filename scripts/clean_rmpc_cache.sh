#!/usr/bin/env bash
set -o errexit
set -o pipefail
set -o nounset

CACHE_DIR="/tmp/rmpc/cache/youtube"

if [[ -d "$CACHE_DIR" && "$(ls -A "$CACHE_DIR")" ]]; then
  rm -v -- "$CACHE_DIR"/*
  echo "Deleted all cached YouTube files ✅."
else
  echo "Nothing is here Amit 😥"
fi
