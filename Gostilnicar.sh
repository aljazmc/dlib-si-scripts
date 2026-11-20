#!/bin/bash
#
# Downloads Gostilnicar from dlib.si into Gostilnicar/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Gostilnicar" \
  "https://www.dlib.si/results/?=&query=%27rele%253dGostilni%25c4%258dar%27&pageSize=100&sortDir=ASC&sort=date&page=" 2
