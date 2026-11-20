#!/bin/bash
#
# Downloads Glasbena Mladina from dlib.si into Glasbena Mladina/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Glasbena Mladina" \
  "https://www.dlib.si/results/?=&query=%27rele%253dGM.%2bGlasbena%2bmladina%27&sortDir=ASC&sort=date&pageSize=100&page=" 2
