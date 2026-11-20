#!/bin/bash
#
# Downloads Dignitas from dlib.si into Dignitas/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Dignitas" \
  "https://www.dlib.si/results/?query=%27srel%3dDignitas+(Ljubljana)%27&pageSize=100&sortDir=ASC&sort=date&page=" 5
