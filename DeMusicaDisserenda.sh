#!/bin/bash
#
# Downloads De Musica Disserenda from dlib.si into De Musica Disserenda/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "De Musica Disserenda" \
  "https://www.dlib.si/results/?=&query=%27rele%253dDe%2bmusica%2bdisserenda%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
