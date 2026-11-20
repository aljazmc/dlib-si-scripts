#!/bin/bash
#
# Downloads IB Revija from dlib.si into IB Revija/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "IB Revija" \
  "https://www.dlib.si/results/?=&query=%27rele%253dIB%2brevija%2b(Ljubljana)%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
