#!/bin/bash
#
# Downloads Acta Histriae from dlib.si into Acta Histriae/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Acta Histriae" \
  "https://www.dlib.si/results/?=&query=%27rele%253dActa%2bHistriae%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
