#!/bin/bash
#
# Downloads Acrocephalus from dlib.si into Acrocephalus/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Acrocephalus" \
  "https://www.dlib.si/results/?=&query=%27rele%253dAcrocephalus%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100&page=" 2
