#!/bin/bash
#
# Downloads Blejske Delavnice iz Fizike from dlib.si into Blejske Delavnice iz Fizike/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Blejske Delavnice iz Fizike" \
  "https://www.dlib.si/results/?=&query=%27rele%253dBlejske%2bdelavnice%2biz%2bfizike%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
