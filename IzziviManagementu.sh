#!/bin/bash
#
# Downloads Izzivi Managementu from dlib.si into Izzivi Managementu/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Izzivi Managementu" \
  "https://www.dlib.si/results/?=&query=%27rele%253dIzzivi%2bmanagementu%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
