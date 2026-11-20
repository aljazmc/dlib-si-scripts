#!/bin/bash
#
# Downloads Druzboslovne Razprave from dlib.si into Druzboslovne Razprave/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Druzboslovne Razprave" \
  "https://www.dlib.si/results/?=&query=%27rele%253dDru%25c5%25beboslovne%2brazprave%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
