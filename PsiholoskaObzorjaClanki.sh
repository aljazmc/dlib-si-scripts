#!/bin/bash
#
# Downloads Psiholoska Obzorja Clanki from dlib.si into Psiholoska Obzorja Clanki/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Psiholoska Obzorja Clanki" \
  "https://www.dlib.si/results/?=&query=%27rele%253dPsiholo%25c5%25a1ka%2bobzorja%2b(Ljubljana)%27&fformattypeserial=article&sortDir=ASC&sort=date&pageSize=100&page=" 10
