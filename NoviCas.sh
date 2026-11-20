#!/bin/bash
#
# Downloads Novi Cas from dlib.si into Novi Cas/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Novi Cas" \
  "https://www.dlib.si/results/?query=%27rele%253d%25c4%258cas%2b(Ljubljana)%27&pageSize=100&fformattypeserial=newspaper&sortDir=ASC&sort=date&frelation=Novi+%c4%8das+(Ljubljana)&page=" 5
