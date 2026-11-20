#!/bin/bash
#
# Downloads Problemi from dlib.si into Problemi/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Problemi" \
  "https://www.dlib.si/results/?=&query=%27rele%253dProblemi%2b(Ljubljana)%27&pageSize=100&sortDir=ASC&sort=date&page=" 2
