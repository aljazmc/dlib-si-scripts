#!/bin/bash
#
# Downloads Glas Podzemlja from dlib.si into Glas Podzemlja/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Glas Podzemlja" \
  "https://www.dlib.si/results/?=&query=%27rele%253dGlas%2bpodzemlja%27&pageSize=100&sortDir=ASC&sort=date"
