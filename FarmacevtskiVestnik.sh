#!/bin/bash
#
# Downloads Farmacevtski Vestnik from dlib.si into Farmacevtski Vestnik/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Farmacevtski Vestnik" \
  "https://www.dlib.si/results/?=&query=%27rele%253dFarmacevtski%2bvestnik%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page=" 2
