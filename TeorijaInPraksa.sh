#!/bin/bash
#
# Downloads Teorija in Praksa from dlib.si into Teorija in Praksa/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Teorija in Praksa" \
  "https://www.dlib.si/results/?=&query=%27rele%253dTeorija%2bin%2bpraksa%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100&page=" 4
