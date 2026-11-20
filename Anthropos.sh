#!/bin/bash
#
# Downloads Anthropos from dlib.si into Anthropos/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Anthropos" \
  "https://www.dlib.si/results/?=&query=%27rele%253dAnthropos%2b(Ljubljana)%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page=" 2
