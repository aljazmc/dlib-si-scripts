#!/bin/bash
#
# Downloads Gospodarska Gibanja from dlib.si into Gospodarska Gibanja/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Gospodarska Gibanja" \
  "https://www.dlib.si/results/?=&query=%27rele%253dGospodarska%2bgibanja%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
