#!/bin/bash
#
# Downloads Glej Netopir from dlib.si into Glej Netopir/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Glej Netopir" \
  "https://www.dlib.si/results/?=&query=%27rele%253dGlej%252c%2bnetopir!%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
