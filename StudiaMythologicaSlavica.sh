#!/bin/bash
#
# Downloads Studia Mythologica Slavica from dlib.si into Studia Mythologica Slavica/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Studia Mythologica Slavica" \
  "https://www.dlib.si/results/?=&query=%27rele%253dStudia%2bmythologica%2bSlavica%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
