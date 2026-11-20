#!/bin/bash
#
# Downloads Acta Chimica Slovenica from dlib.si into Acta Chimica Slovenica/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Acta Chimica Slovenica" \
  "https://www.dlib.si/results/?=&query=%27rele%253dActa%2bchimica%2bslovenica%27&fformattypeserial=journal&pageSize=100"
