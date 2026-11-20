#!/bin/bash
#
# Downloads Acta Geotechnica Slovenica from dlib.si into Acta Geotechnica Slovenica/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Acta Geotechnica Slovenica" \
  "https://www.dlib.si/results/?=&query=%27rele%253dActa%2bgeotechnica%2bSlovenica%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
