#!/bin/bash
#
# Downloads Acta Geographica Slovenica from dlib.si into Acta Geographica Slovenica/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Acta Geographica Slovenica" \
  "https://www.dlib.si/results/?=&query=%27rele%253dActa%2bgeographica%2bSlovenica%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
