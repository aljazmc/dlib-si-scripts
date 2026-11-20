#!/bin/bash
#
# Downloads Zgodovina v Soli from dlib.si into Zgodovina v Soli/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Zgodovina v Soli" \
  "https://www.dlib.si/results/?=&query=%27rele%253dZgodovina%2bv%2b%25c5%25a1oli%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
