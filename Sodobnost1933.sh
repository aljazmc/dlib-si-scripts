#!/bin/bash
#
# Downloads Sodobnost 1933 from dlib.si into Sodobnost 1933/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Sodobnost 1933" \
  "https://www.dlib.si/results/?=&query=%27rele%253dSodobnost%2b(1933)%27&pageSize=100&sortDir=ASC&sort=date&page=" 11
