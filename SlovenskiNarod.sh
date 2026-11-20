#!/bin/bash
#
# Downloads Slovenski Narod from dlib.si into Slovenski Narod/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Slovenski Narod" \
  "https://www.dlib.si/results/?query=%27rele%253dSlovenski%2bnarod%27&sortDir=ASC&sort=date&frelation=Slovenski+narod&pageSize=100&fformattypeserial=newspaper&ftype=%c4%8dasopisje&page=" 232
