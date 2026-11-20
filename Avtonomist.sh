#!/bin/bash
#
# Downloads Avtonomist from dlib.si into Avtonomist/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Avtonomist" \
  "https://www.dlib.si/results/?=&query=%27rele%253dAvtonomist%27&sortDir=ASC&sort=date&pageSize=100&page=" 2
