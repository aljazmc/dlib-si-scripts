#!/bin/bash
#
# Downloads Zbornik za Umetnostno Zgodovino from dlib.si into Zbornik za Umetnostno Zgodovino/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Zbornik za Umetnostno Zgodovino" \
  "https://www.dlib.si/results/?=&query=%27rele%253dZbornik%2bza%2bumetnostno%2bzgodovino%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
