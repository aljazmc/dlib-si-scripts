#!/bin/bash
#
# Downloads Delavec from dlib.si into Delavec/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Delavec" \
  "https://www.dlib.si/results/?=&query=%27rele%253dDelavec%2b(1914)%27&pageSize=100&sortDir=ASC&sort=date&page=" 9
