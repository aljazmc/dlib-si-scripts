#!/bin/bash
#
# Downloads Geodetski Vestnik from dlib.si into Geodetski Vestnik/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Geodetski Vestnik" \
  "https://www.dlib.si/results/?=&query=%27rele%253dGeodetski%2bvestnik%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page=" 2
