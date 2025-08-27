#!/bin/bash

# Defaults
TYPE=""
NAME=""

# Parse options
while [[ "$#" -gt 0 ]]; do
  case $1 in
    -t|--type) TYPE="$2"; shift ;;
    -n|--name) NAME="$2"; shift ;;
    *) echo "Unknown option: $1" >&2; exit 1 ;;
  esac
  shift
done

# Validate input
if [[ -z "$TYPE" || -z "$NAME" ]]; then
  echo "Usage: ./new.sh -t <type: blog|projects|ctf> -n \"Post Title\"" >&2
  exit 1
fi

# Check for valid type
VALID_TYPES=("blog" "projects" "ctf")
if [[ ! " ${VALID_TYPES[@]} " =~ " ${TYPE} " ]]; then
  echo "Invalid type '$TYPE'. Must be one of: blog, projects, ctf" >&2
  exit 1
fi

# Slugify title
YEAR=$(date +%Y)
SLUG=$(echo "$NAME" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr -cd '[:alnum:]-')
TARGET="${TYPE}/${YEAR}/${SLUG}/index.md"

# Run hugo new
echo "Creating: content/$TARGET"
hugo new "$TARGET"