#!/bin/bash
#
# Downloads Akademski Glas from dlib.si into Akademski Glas/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Akademski Glas" \
  "https://www.dlib.si/results/?=&query=%27rele%253dAkademski%2bglas%27&sortDir=ASC&sort=date&pageSize=100"
