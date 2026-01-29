#!/bin/bash

# ----------------------------------------
# Usage:
#   watch_logs.sh <project_dir> "<glob>" [n_levels]
#
# Examples:
#   watch_logs.sh /scratch/general/vast/$USER "*/*/pipeline_*.log"
#   watch_logs.sh /data/project logs/*/*/*.log 2
#
# n_levels = how many parent directories to include in prefix (default: 2)
# ----------------------------------------

if [[ $# -lt 2 ]]; then
  echo "Usage: $0 <project_dir> '<glob>' [n_levels]"
  exit 1
fi

PROJECT_DIR="$1"
GLOB="$2"
NLEVELS="${3:-2}"

# Normalize project dir (remove trailing slash)
PROJECT_DIR="${PROJECT_DIR%/}"

shopt -s nullglob
FILES=( "$PROJECT_DIR"/$GLOB )
shopt -u nullglob

if [[ ${#FILES[@]} -eq 0 ]]; then
  echo "No files matched: $PROJECT_DIR/$GLOB"
  exit 1
fi

for f in "${FILES[@]}"; do
  (
    prefix=$(echo "$f" | sed "s|^$PROJECT_DIR/||" | cut -d/ -f1-"$NLEVELS" | sed 's|/|][|g')
    tail -F "$f" | sed "s/^/[$prefix] /"
  ) &
done

wait


