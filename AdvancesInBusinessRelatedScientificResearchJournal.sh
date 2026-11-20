#!/bin/bash
#
# Downloads Advances in Business Related Scientific Research Journal from dlib.si into Advances in Business Related Scientific Research Journal/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Advances in Business Related Scientific Research Journal" \
  "https://www.dlib.si/results/?=&query=%27rele%253dAdvances%2bin%2bbusiness%2brelated%2bscientific%2bresearch%2bjournal%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
