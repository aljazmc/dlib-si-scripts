#!/bin/bash
#
# Downloads Didakta from dlib.si into Didakta/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Didakta" \
  "https://www.dlib.si/results/?=&query=%27rele%253dDidakta%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
