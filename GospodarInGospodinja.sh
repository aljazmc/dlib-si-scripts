#!/bin/bash
#
# Downloads Gospodar in Gospodinja from dlib.si into Gospodar in Gospodinja/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Gospodar in Gospodinja" \
  "https://www.dlib.si/results/?=&query=%27rele%253dGospodar%2bin%2bgospodinja%27&sortDir=ASC&sort=date&pageSize=100&page=" 6
