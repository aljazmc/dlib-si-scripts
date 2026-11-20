#!/bin/bash
#
# Downloads Development Report from dlib.si into Development Report/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Development Report" \
  "https://www.dlib.si/results/?=&query=%27rele%253dDevelopment%2breport%27&sortDir=ASC&sort=date&pageSize=100"
