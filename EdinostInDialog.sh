#!/bin/bash
#
# Downloads Edinost in Dialog from dlib.si into Edinost in Dialog/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Edinost in Dialog" \
  "https://www.dlib.si/results/?=&query=%27rele%253dEdinost%2bin%2bdialog%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
