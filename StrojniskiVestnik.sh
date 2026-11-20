#!/bin/bash
#
# Downloads Strojniski Vestnik from dlib.si into Strojniski Vestnik/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Strojniski Vestnik" \
  "https://www.dlib.si/results/?=&query=%27rele%253dStrojni%25c5%25a1ki%2bvestnik%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100&page=" 2
