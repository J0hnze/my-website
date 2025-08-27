#!/bin/bash
# new_box.sh - Create a new CTF box folder structure for Obsidian
#
# Usage:
#   ./new_box.sh PLATFORM BOX_NAME
#
# Example:
#   ./new_box.sh HTB Forest
#
# This will create:
#   PLATFORM/BOX_NAME/
#     ├─ BOX_NAME.md
#     ├─ images/
#     └─ scripts/

if [ $# -ne 2 ]; then
  echo "Usage: $0 PLATFORM BOX_NAME"
  exit 1
fi

PLATFORM="$1"
BOX="$2"

mkdir -p "$PLATFORM/$BOX/images"
mkdir -p "$PLATFORM/$BOX/scripts"

cat > "$PLATFORM/$BOX/$BOX.md" <<EOL
# $BOX

**Platform:** $PLATFORM  
**Difficulty:**  
**Date Started:**  
**Date Completed:**  

## Recon

## Initial Foothold

## Privilege Escalation

## Takeaways
- [[tool1]]
- [[technique1]]

## Flags
- User: 
- Root: 

## Images loaction
![[images/screenshot1.png]]

## Scripts location
- [script1.sh](scripts/script1.sh)
EOL

# Print success message
echo "Created $PLATFORM/$BOX/ with template markdown, images/, and scripts/ folders." 