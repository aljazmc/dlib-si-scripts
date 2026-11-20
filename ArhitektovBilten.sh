#!/bin/bash
#
# Downloads Arhitektov Bilten from dlib.si into Arhitektov Bilten/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Arhitektov Bilten" \
  "https://www.dlib.si/results/?=&query=%27rele%253dAB.%2bArhitektov%2bbilten%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
