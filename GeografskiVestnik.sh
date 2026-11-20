#!/bin/bash
#
# Downloads Geografski Vestnik from dlib.si into Geografski Vestnik/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Geografski Vestnik" \
  "https://www.dlib.si/results/?=&query=%27rele%253dGeografski%2bvestnik%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page=" 2
