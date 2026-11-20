#!/bin/bash
#
# Downloads Gradbeni Vestnik from dlib.si into Gradbeni Vestnik/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Gradbeni Vestnik" \
  "https://www.dlib.si/results/?=&query=%27rele%253dGradbeni%2bvestnik%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page=" 7
