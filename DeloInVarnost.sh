#!/bin/bash
#
# Downloads Delo in Varnost from dlib.si into Delo in Varnost/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Delo in Varnost" \
  "https://www.dlib.si/results/?=&query=%27rele%253dDelo%2bin%2bvarnost%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page=" 2
