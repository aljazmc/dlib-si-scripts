#!/bin/bash
#
# Downloads Javna Uprava from dlib.si into Javna Uprava/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Javna Uprava" \
  "https://www.dlib.si/results/?=&query=%27rele%253dJavna%2buprava%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
