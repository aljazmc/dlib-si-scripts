#!/bin/bash
#
# Downloads Ars Mathematica Contemporanea from dlib.si into Ars Mathematica Contemporanea/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Ars Mathematica Contemporanea" \
  "https://www.dlib.si/results/?=&query=%27rele%253dArs%2bmathematica%2bcontemporanea%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
