#!/bin/bash
#
# Downloads Fizika v Soli from dlib.si into Fizika v Soli/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Fizika v Soli" \
  "https://www.dlib.si/results/?query=%27rele%253dFizika%2bv%2b%25c5%25a1oli%27&pageSize=100&sortDir=ASC&sort=date&fformattypeserial=journal"
