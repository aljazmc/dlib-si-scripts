#!/bin/bash
#
# Downloads Gozdarski Vestnik from dlib.si into Gozdarski Vestnik/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Gozdarski Vestnik" \
  "https://www.dlib.si/results/?=&query=%27rele%253dGozdarski%2bvestnik%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page=" 4
