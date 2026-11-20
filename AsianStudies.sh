#!/bin/bash
#
# Downloads Asian Studies from dlib.si into Asian Studies/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Asian Studies" \
  "https://www.dlib.si/results/?=&query=%27rele%253dAsian%2bstudies%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
