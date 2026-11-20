#!/bin/bash
#
# Downloads Andragoska Spoznanja from dlib.si into Andragoska Spoznanja/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Andragoska Spoznanja" \
  "https://www.dlib.si/results/?=&query=%27rele%253dAS.%2bAndrago%25c5%25a1ka%2bspoznanja%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
