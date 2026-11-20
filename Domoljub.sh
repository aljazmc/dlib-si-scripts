#!/bin/bash
#
# Downloads Domoljub from dlib.si into Domoljub/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Domoljub" \
  "https://www.dlib.si/results/?=&query=%27rele%253dDomoljub%2b(Ljubljana)%27&pageSize=100&sortDir=ASC&sort=date&page=" 25
