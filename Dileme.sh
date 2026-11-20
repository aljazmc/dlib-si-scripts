#!/bin/bash
#
# Downloads Dileme from dlib.si into Dileme/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Dileme" \
  "https://www.dlib.si/results/?=&query=%27rele%253dDileme%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
