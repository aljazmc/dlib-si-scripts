#!/bin/bash
#
# Downloads Elektrotehniski Vestnik Clanki from dlib.si into Elektrotehniski Vestnik Clanki/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Elektrotehniski Vestnik Clanki" \
  "https://www.dlib.si/results/?=&query=%27rele%253dElektrotehni%25c5%25a1ki%2bvestnik%27&sortDir=ASC&sort=date&pageSize=100&page=" 9
