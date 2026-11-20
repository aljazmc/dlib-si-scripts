#!/bin/bash
#
# Downloads Akademija MM from dlib.si into Akademija MM/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Akademija MM" \
  "https://www.dlib.si/results/?=&query=%27rele%253dAkademija%2bMM%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
