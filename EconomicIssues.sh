#!/bin/bash
#
# Downloads Economic Issues from dlib.si into Economic Issues/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Economic Issues" \
  "https://www.dlib.si/results/?=&query=%27rele%253dEconomic%2bissues%27&sortDir=ASC&sort=date&pageSize=100"
