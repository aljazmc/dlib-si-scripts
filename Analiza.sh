#!/bin/bash
#
# Downloads Analiza from dlib.si into Analiza/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Analiza" \
  "https://www.dlib.si/results/?=&query=%27rele%253dAnaliza%2b(Ljubljana)%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
