#!/bin/bash
#
# Downloads Tim from dlib.si into Tim/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Tim" \
  "https://www.dlib.si/results/?=&query=%27rele%253dTim%2b(Ljubljana)%27&sortDir=ASC&sort=date&pageSize=100&page=" 6
