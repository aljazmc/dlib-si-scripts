#!/bin/bash
#
# Downloads Bojevnik from dlib.si into Bojevnik/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Bojevnik" \
  "https://www.dlib.si/results/?=&query=%27rele%253dBojevnik%27&pageSize=100&sortDir=ASC&sort=date"
