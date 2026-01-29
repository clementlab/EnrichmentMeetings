#!/bin/bash

PROJECTS=("project1" "project2")
TOOLS=("tool1" "tool2" "tool3")
LEVELS=("INFO" "WARN" "ERROR")

rm -rf logs
while true; do
  project=${PROJECTS[$RANDOM % ${#PROJECTS[@]}]}
  tool=${TOOLS[$RANDOM % ${#TOOLS[@]}]}
  level=${LEVELS[$RANDOM % ${#LEVELS[@]}]}

  log_dir="logs/$project/$tool"
  log_file="$log_dir/example.log"

  mkdir -p "$log_dir"

  timestamp=$(date "+%Y-%m-%d %H:%M:%S")
  message="This is a sample log message"

  echo "$timestamp [$level] logs/$project/$tool - $message" >> "$log_file"

  sleep $((RANDOM % 3 + 1))
done
