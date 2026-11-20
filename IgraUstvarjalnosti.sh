#!/bin/bash
#
# Downloads Igra Ustvarjalnosti from dlib.si into Igra Ustvarjalnosti/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Igra Ustvarjalnosti" \
  "https://www.dlib.si/results/?=&query=%27rele%253dIgra%2bustvarjalnosti%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
