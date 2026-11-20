#!/bin/bash
#
# Downloads Kronika from dlib.si into Kronika/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Kronika" \
  "https://www.dlib.si/results/?=&query=%27rele%253dKronika%2b(Ljubljana)%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page=" 2
