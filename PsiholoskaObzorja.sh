#!/bin/bash
#
# Downloads Psiholoska Obzorja from dlib.si into Psiholoska Obzorja/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Psiholoska Obzorja" \
  "https://www.dlib.si/results/?=&query=%27rele%253dPsiholo%25c5%25a1ka%2bobzorja%2b(Ljubljana)%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
