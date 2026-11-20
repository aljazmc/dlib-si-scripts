#!/bin/bash
#
# Downloads Socialist from dlib.si into Socialist/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Socialist" \
  "https://www.dlib.si/results/?=&query=%27rele%253dSocialist%2b(Ljubljana%252c%2b1923)%27&pageSize=100&sortDir=ASC&sort=date&page=" 2
