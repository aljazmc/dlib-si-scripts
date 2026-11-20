#!/bin/bash
#
# Downloads Zdravstveno Varstvo from dlib.si into Zdravstveno Varstvo/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Zdravstveno Varstvo" \
  "https://www.dlib.si/results/?=&query=%27rele%253dZdravstveno%2bvarstvo%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
