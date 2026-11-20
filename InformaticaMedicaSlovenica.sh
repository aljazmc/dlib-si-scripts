#!/bin/bash
#
# Downloads Informatica Medica Slovenica from dlib.si into Informatica Medica Slovenica/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Informatica Medica Slovenica" \
  "https://www.dlib.si/results/?=&query=%27rele%253dInformatica%2bMedica%2bSlovenica%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
