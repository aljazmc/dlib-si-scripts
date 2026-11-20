#!/bin/bash
#
# Downloads Slovenski List 1937 from dlib.si into Slovenski List 1937/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Slovenski List 1937" \
  "https://www.dlib.si/results/?=&query=%27rele%253dSlovenski%2blist%2b(Buenos%2bAires)%27&fformattypeserial=newspaper&sortDir=ASC&sort=date&pageSize=100&page=" 3
