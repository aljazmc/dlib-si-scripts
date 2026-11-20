#!/bin/bash
#
# Downloads Casopis za Zgodovino in Narodopisje from dlib.si into Casopis za Zgodovino in Narodopisje/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Casopis za Zgodovino in Narodopisje" \
  "https://www.dlib.si/results/?=&query=%27rele%253d%25c4%258casopis%2bza%2bzgodovino%2bin%2bnarodopisje%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page=" 2
