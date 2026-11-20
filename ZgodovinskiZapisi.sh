#!/bin/bash
#
# Downloads Zgodovinski Zapisi from dlib.si into Zgodovinski Zapisi/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Zgodovinski Zapisi" \
  "https://www.dlib.si/results/?=&query=%27rele%253dZgodovinski%2bzapisi%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
