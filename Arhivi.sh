#!/bin/bash
#
# Downloads Arhivi from dlib.si into Arhivi/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Arhivi" \
  "https://www.dlib.si/results/?=&query=%27rele%253dArhivi%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
