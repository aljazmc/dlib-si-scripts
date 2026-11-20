#!/bin/bash
#
# Downloads Zgodovinski Casopis from dlib.si into Zgodovinski Casopis/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Zgodovinski Casopis" \
  "https://www.dlib.si/results/?=&query=%27rele%253dZgodovinski%2b%25c4%258dasopis%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page=" 2
