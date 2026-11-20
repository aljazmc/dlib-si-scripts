#!/bin/bash
#
# Downloads Glas from dlib.si into Glas/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Glas" \
  "https://www.dlib.si/results/?=&query=%27rele%253dGlas%27&frelation=Glas&sortDir=ASC&sort=date&pageSize=100&page=" 26
