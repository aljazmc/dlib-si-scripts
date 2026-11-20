#!/bin/bash
#
# Downloads CEPS Journal from dlib.si into CEPS Journal/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "CEPS Journal" \
  "https://www.dlib.si/results/?=&query=%27rele%253dCEPS%2bjournal%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
