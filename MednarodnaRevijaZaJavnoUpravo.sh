#!/bin/bash
#
# Downloads Mednarodna Revija za Javno Upravo from dlib.si into Mednarodna Revija za Javno Upravo/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Mednarodna Revija za Javno Upravo" \
  "https://www.dlib.si/results/?=&query=%27rele%253dMednarodna%2brevija%2bza%2bjavno%2bupravo%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
