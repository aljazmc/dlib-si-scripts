#!/bin/bash
#
# Downloads Ptujcan from dlib.si into Ptujcan/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Ptujcan" \
  "https://www.dlib.si/results/?=&query=%27rele%253dPtuj%25c4%258dan%27&sortDir=ASC&sort=date&pageSize=100&page=" 4
