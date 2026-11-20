#!/bin/bash
#
# Downloads Linguistica from dlib.si into Linguistica/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Linguistica" \
  "https://www.dlib.si/results/?=&query=%27rele%253dLinguistica%2b(Ljubljana)%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
