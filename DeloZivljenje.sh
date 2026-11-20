#!/bin/bash
#
# Downloads Delo Zivljenje from dlib.si into Delo Zivljenje/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Delo Zivljenje" \
  "https://www.dlib.si/results/?=&query=%27rele%253dDelo%2b-%2b%25c5%25beivljenje%27&pageSize=100&sortDir=ASC&sort=date&page=" 5
