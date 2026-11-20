#!/bin/bash
#
# Downloads Dogovori Clanki from dlib.si into Dogovori Clanki/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Dogovori Clanki" \
  "https://www.dlib.si/results/?=&query=%27rele%253dDogovori%27&pageSize=100&sortDir=ASC&sort=date&page=" 96
