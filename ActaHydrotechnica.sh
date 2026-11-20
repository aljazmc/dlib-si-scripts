#!/bin/bash
#
# Downloads Acta Hydrotechnica from dlib.si into Acta Hydrotechnica/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Acta Hydrotechnica" \
  "https://www.dlib.si/results/?=&query=%27rele%253dActa%2bhydrotechnica%27&pageSize=100&sortDir=ASC&sort=date&page=" 2
