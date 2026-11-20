#!/bin/bash
#
# Downloads Acta Biologica Slovenica from dlib.si into Acta Biologica Slovenica/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Acta Biologica Slovenica" \
  "https://www.dlib.si/results/?=&query=%27rele%253dActa%2bbiologica%2bslovenica%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
