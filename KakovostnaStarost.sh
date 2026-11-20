#!/bin/bash
#
# Downloads Kakovostna Starost from dlib.si into Kakovostna Starost/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Kakovostna Starost" \
  "https://www.dlib.si/results/?=&query=%27rele%253dKakovostna%2bstarost%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
