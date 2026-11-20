#!/bin/bash
#
# Downloads Delavske Novice from dlib.si into Delavske Novice/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Delavske Novice" \
  "https://www.dlib.si/results/?=&query=%27rele%253dDelavske%2bnovice%27&pageSize=100&sortDir=ASC&sort=date"
