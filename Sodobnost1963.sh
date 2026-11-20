#!/bin/bash
#
# Downloads Sodobnost 1963 from dlib.si into Sodobnost 1963/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Sodobnost 1963" \
  "https://www.dlib.si/results/?=&query=%27rele%253dSodobnost%2b(1963)%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page=" 2
