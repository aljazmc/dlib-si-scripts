#!/bin/bash
#
# Downloads Uprava from dlib.si into Uprava/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Uprava" \
  "https://www.dlib.si/results/?=&query=%27rele%253dUprava%2b(Ljubljana)%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
