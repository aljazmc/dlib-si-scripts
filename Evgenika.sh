#!/bin/bash
#
# Downloads Evgenika from dlib.si into Evgenika/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Evgenika" \
  "https://www.dlib.si/results/?=&query=%27rele%253dEvgenika%27&sortDir=ASC&sort=date&pageSize=100"
