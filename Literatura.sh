#!/bin/bash
#
# Downloads Literatura from dlib.si into Literatura/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Literatura" \
  "https://www.dlib.si/results/?=&query=%27rele%253dLiteratura%2b(Ljubljana)%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
