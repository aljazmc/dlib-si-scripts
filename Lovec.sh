#!/bin/bash
#
# Downloads Lovec from dlib.si into Lovec/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Lovec" \
  "https://www.dlib.si/results/?=&query=%27rele%253dLovec%2b(Ljubljana)%27&sortDir=ASC&sort=date&pageSize=100&page=" 6
