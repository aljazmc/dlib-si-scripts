#!/bin/bash
#
# Downloads 1551 from dlib.si into 1551/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "1551" \
  "https://www.dlib.si/results/?=&query=%27rele%253d1551%27&sortDir=ASC&sort=date&pageSize=100"
