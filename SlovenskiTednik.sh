#!/bin/bash
#
# Downloads Slovenski Tednik from dlib.si into Slovenski Tednik/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Slovenski Tednik" \
  "https://www.dlib.si/results/?=&query=%27rele%253dSlovenski%2btednik%2b(Buenos%2bAires)%27&sortDir=ASC&sort=date&pageSize=100&page=" 2
