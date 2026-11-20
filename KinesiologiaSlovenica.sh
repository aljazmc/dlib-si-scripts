#!/bin/bash
#
# Downloads Kinesiologia Slovenica from dlib.si into Kinesiologia Slovenica/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Kinesiologia Slovenica" \
  "https://www.dlib.si/results/?=&pageSize=100&sortDir=ASC&sort=date&query=%27rele%253dKinesiologia%2bSlovenica%27&page=" 6
