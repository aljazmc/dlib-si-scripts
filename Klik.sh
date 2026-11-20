#!/bin/bash
#
# Downloads Klik from dlib.si into Klik/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Klik" \
  "https://www.dlib.si/results/?query=%27rele%253dKlik%2b(Ljubljana)%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
