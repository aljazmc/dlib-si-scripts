#!/bin/bash
#
# Downloads Dynamic Relationships Management Journal from dlib.si into Dynamic Relationships Management Journal/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Dynamic Relationships Management Journal" \
  "https://www.dlib.si/results/?=&query=%27rele%253dDynamic%2brelationships%2bmanagement%2bjournal%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
