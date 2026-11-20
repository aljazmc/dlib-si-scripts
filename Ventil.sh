#!/bin/bash
#
# Downloads Ventil from dlib.si into Ventil/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Ventil" \
  "https://www.dlib.si/results/?=&query=%27rele%253dVentil%2b(Ljubljana)%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page=" 2
