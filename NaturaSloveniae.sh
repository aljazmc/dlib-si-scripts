#!/bin/bash
#
# Downloads Natura Sloveniae from dlib.si into Natura Sloveniae/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Natura Sloveniae" \
  "https://www.dlib.si/results/?=&query=%27rele%253dNatura%2bSloveniae%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
