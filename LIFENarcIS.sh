#!/bin/bash
#
# Downloads LIFE NarcIS from dlib.si into LIFE NarcIS/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "LIFE NarcIS" \
  "https://www.dlib.si/results/?query=%27rele%253dVarstvo%2bnarave%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&frelation=Partnerstvo+za+varstvo+narave"
