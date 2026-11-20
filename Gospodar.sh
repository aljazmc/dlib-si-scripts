#!/bin/bash
#
# Downloads Gospodar from dlib.si into Gospodar/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Gospodar" \
  "https://www.dlib.si/results/?=&query=%27rele%253dGospodar%2b(Ljubljana)%27&pageSize=100&sortDir=ASC&sort=date&page=" 2
