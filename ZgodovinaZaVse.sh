#!/bin/bash
#
# Downloads Zgodovina za Vse from dlib.si into Zgodovina za Vse/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Zgodovina za Vse" \
  "https://www.dlib.si/results/?=&query=%27rele%253dZgodovina%2bza%2bvse%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
