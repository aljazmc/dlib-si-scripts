#!/bin/bash
#
# Downloads Problemi Razprave from dlib.si into Problemi Razprave/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Problemi Razprave" \
  "https://www.dlib.si/results/?=&query=%27rele%253dProblemi.%2bRazprave%27&pageSize=100&sortDir=ASC&sort=date"
