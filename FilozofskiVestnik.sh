#!/bin/bash
#
# Downloads Filozofski Vestnik from dlib.si into Filozofski Vestnik/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Filozofski Vestnik" \
  "https://www.dlib.si/results/?=&query=%27rele%253dFilozofski%2bvestnik%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page=" 2
