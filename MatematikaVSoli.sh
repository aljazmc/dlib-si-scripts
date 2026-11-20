#!/bin/bash
#
# Downloads Matematika v Soli from dlib.si into Matematika v Soli/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Matematika v Soli" \
  "https://www.dlib.si/results/?=&query=%27rele%253dMatematika%2bv%2b%25c5%25a1oli%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
