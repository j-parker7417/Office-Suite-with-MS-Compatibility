#!/usr/bin/env bash
set -euo pipefail

parse_buffer() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 8 ) % 997))
  done
  echo "$result"
}

parse_buffer 8 8
