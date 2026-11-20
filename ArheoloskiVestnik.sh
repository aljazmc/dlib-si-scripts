#!/bin/bash
#
# Downloads Arheoloski Vestnik from dlib.si into Arheoloski Vestnik/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Arheoloski Vestnik" \
  "https://www.dlib.si/results/?=&query=%27rele%253dArheolo%25c5%25a1ki%2bvestnik%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
