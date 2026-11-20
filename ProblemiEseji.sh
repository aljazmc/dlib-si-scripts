#!/bin/bash
#
# Downloads Problemi Eseji from dlib.si into Problemi Eseji/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Problemi Eseji" \
  "https://www.dlib.si/results/?=&query=%27rele%253dProblemi.%2bEseji%27&pageSize=100&sortDir=ASC&sort=date"
