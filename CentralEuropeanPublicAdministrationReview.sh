#!/bin/bash
#
# Downloads Central European Public Administration Review from dlib.si into Central European Public Administration Review/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Central European Public Administration Review" \
  "https://www.dlib.si/results/?=&query=%27rele%253dCentral%2bEuropean%2bpublic%2badministration%2breview%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
