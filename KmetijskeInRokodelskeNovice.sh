#!/bin/bash
#
# Downloads Kmetijske in Rokodelske Novice from dlib.si into Kmetijske in Rokodelske Novice/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Kmetijske in Rokodelske Novice" \
  "https://www.dlib.si/results/?=&query=%27rele%253dKmetijske%2bin%2brokodelske%2bnovice%27&pageSize=100&fformattypeserial=newspaper&sortDir=ASC&sort=date&page=" 35
