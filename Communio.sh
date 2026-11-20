#!/bin/bash
#
# Downloads Communio from dlib.si into Communio/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Communio" \
  "https://www.dlib.si/results/?query=%27rele%253dCommunio%2b(Ljubljana)%27&pageSize=100&sortDir=ASC&sort=date&fformattypeserial=journal"
