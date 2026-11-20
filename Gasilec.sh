#!/bin/bash
#
# Downloads Gasilec from dlib.si into Gasilec/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Gasilec" \
  "https://www.dlib.si/results/?=&query=%27rele%253dGasilec%2b(1897-1941)%27&pageSize=100&sortDir=ASC&sort=date&page=" 3
