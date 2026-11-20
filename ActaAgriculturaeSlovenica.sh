#!/bin/bash
#
# Downloads Acta Agriculturae Slovenica from dlib.si into Acta Agriculturae Slovenica/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Acta Agriculturae Slovenica" \
  "https://www.dlib.si/results/?=&query=%27rele%253dActa%2bagriculturae%2bSlovenica%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
