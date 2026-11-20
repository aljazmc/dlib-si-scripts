#!/bin/bash
#
# Downloads Slovenski List 1896 from dlib.si into Slovenski List 1896/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Slovenski List 1896" \
  "https://www.dlib.si/results/?=&query=%27rele%253dSlovenski%2blist%2b(1896)%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100&page=" 5
