#!/bin/bash
#
# Downloads Informatica from dlib.si into Informatica/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Informatica" \
  "https://www.dlib.si/results/?=&query=%27rele%253dInformatica%2b(Ljubljana)%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page=" 3
