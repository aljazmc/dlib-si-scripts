#!/bin/bash
#
# Downloads Slovenec from dlib.si into Slovenec/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Slovenec" \
  "https://www.dlib.si/results/?query=%27rele%253dSlovenec%2b(1873)%27&pageSize=100&sortDir=ASC&sort=date&fformattypeserial=newspaper&page=" 212
