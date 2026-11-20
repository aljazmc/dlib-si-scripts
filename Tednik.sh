#!/bin/bash
#
# Downloads Tednik from dlib.si into Tednik/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Tednik" \
  "https://www.dlib.si/results/?=&query=%27rele%253dTednik%2b(Ptuj)%27&sortDir=ASC&sort=date&pageSize=100&page=" 44
