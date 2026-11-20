#!/bin/bash
#
# Downloads Management from dlib.si into Management/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Management" \
  "https://www.dlib.si/results/?query=%27rele%253dManagement%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&frelation=Management"
