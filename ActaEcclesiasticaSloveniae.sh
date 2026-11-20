#!/bin/bash
#
# Downloads Acta Ecclesiastica Sloveniae from dlib.si into Acta Ecclesiastica Sloveniae/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Acta Ecclesiastica Sloveniae" \
  "https://www.dlib.si/results/?=&query=%27rele%253dActa%2becclesiastica%2bSloveniae%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
