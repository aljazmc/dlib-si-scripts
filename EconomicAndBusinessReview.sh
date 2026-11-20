#!/bin/bash
#
# Downloads Economic and Business Review from dlib.si into Economic and Business Review/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Economic and Business Review" \
  "https://www.dlib.si/results/?=&query=%27rele%253dEconomic%2band%2bbusiness%2breview%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
