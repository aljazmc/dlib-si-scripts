#!/bin/bash
#
# Downloads Geologija from dlib.si into Geologija/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Geologija" \
  "https://www.dlib.si/results/?=&query=%27rele%253dGeologija%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
