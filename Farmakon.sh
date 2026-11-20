#!/bin/bash
#
# Downloads Farmakon from dlib.si into Farmakon/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Farmakon" \
  "https://www.dlib.si/results/?query=%27rele%253dFarmakon%2b(Ljubljana)%27&pageSize=100&sortDir=ASC&sort=date&fformattypeserial=journal"
