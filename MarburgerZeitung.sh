#!/bin/bash
#
# Downloads Marburger Zeitung from dlib.si into Marburger Zeitung/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Marburger Zeitung" \
  "https://www.dlib.si/results/?=&query=%27rele%253dMarburger%2bZeitung%27&sortDir=ASC&sort=date&pageSize=100&page=" 159
