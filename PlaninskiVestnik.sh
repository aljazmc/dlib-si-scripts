#!/bin/bash
#
# Downloads Planinski Vestnik from dlib.si into Planinski Vestnik/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Planinski Vestnik" \
  "https://www.dlib.si/results/?=&query=%27rele%253dPlaninski%2bvestnik%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page=" 14
