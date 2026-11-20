#!/bin/bash
#
# Downloads International Journal of Euro Mediterranean Studies from dlib.si into International Journal of Euro Mediterranean Studies/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "International Journal of Euro Mediterranean Studies" \
  "https://www.dlib.si/results/?=&query=%27rele%253dInternational%2bjournal%2bof%2bEuro-Mediterranean%2bstudies%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
