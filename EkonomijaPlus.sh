#!/bin/bash
#
# Downloads Ekonomija Plus from dlib.si into Ekonomija Plus/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Ekonomija Plus" \
  "https://www.dlib.si/results/?query=%27rele%253dEkonomija%2bplus%27&pageSize=100&sortDir=ASC&sort=date&fformattypeserial=journal"
