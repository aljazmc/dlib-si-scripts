#!/bin/bash
#
# Downloads Jutro from dlib.si into Jutro/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Jutro" \
  "https://www.dlib.si/results/?=&query=%27rele%253dJutro%2b(Ljubljana)%27&pageSize=100&fformattypeserial=newspaper&sortDir=ASC&sort=date&page=" 91
