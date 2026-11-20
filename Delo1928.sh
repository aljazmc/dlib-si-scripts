#!/bin/bash
#
# Downloads Delo 1928 from dlib.si into Delo 1928/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Delo 1928" \
  "https://www.dlib.si/results/?=&query=%27rele%253dDelo%2b(1928)%27&pageSize=100&sortDir=ASC&sort=date"
