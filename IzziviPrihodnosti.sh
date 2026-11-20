#!/bin/bash
#
# Downloads Izzivi Prihodnosti from dlib.si into Izzivi Prihodnosti/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Izzivi Prihodnosti" \
  "https://www.dlib.si/results/?=&query=%27rele%253dIzzivi%2bprihodnosti%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
