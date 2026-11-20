#!/bin/bash
#
# Downloads Problemi Literatura from dlib.si into Problemi Literatura/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Problemi Literatura" \
  "https://www.dlib.si/results/?=&query=%27rele%253dProblemi.%2bLiteratura%27&pageSize=100&sortDir=ASC&sort=date"
