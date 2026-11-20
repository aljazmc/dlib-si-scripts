#!/bin/bash
#
# Downloads Pettauer Zeitung from dlib.si into Pettauer Zeitung/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Pettauer Zeitung" \
  "https://www.dlib.si/results/?=&query=%27rele%253dPettauer%2bZeitung%27&sortDir=ASC&sort=date&pageSize=100&page=" 7
