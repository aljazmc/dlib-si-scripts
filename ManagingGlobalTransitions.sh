#!/bin/bash
#
# Downloads Managing Global Transitions from dlib.si into Managing Global Transitions/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Managing Global Transitions" \
  "https://www.dlib.si/results/?=&query=%27rele%253dManaging%2bglobal%2btransitions%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
