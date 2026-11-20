#!/bin/bash
#
# Downloads Slavisticna Revija from dlib.si into Slavisticna Revija/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Slavisticna Revija" \
  "https://www.dlib.si/results/?=&query=%27rele%253dSlavisti%25c4%258dna%2brevija%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page=" 2
