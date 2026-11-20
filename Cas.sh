#!/bin/bash
#
# Downloads Cas from dlib.si into Cas/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Cas" \
  "https://www.dlib.si/results/?query=%27rele%253d%25c4%258cas%2b(Ljubljana)%27&pageSize=100&fformattypeserial=newspaper&sortDir=ASC&sort=date&frelation=%c4%8cas+(Ljubljana)&page=" 3
