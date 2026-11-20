#!/bin/bash
#
# Downloads Varstvo Narave from dlib.si into Varstvo Narave/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Varstvo Narave" \
  "https://www.dlib.si/results/?query=%27rele%253dVarstvo%2bnarave%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&frelation=Varstvo+narave"
