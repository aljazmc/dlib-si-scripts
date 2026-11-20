#!/bin/bash
#
# Downloads Angeljcek from dlib.si into Angeljcek/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Angeljcek" \
  "https://www.dlib.si/results/?=&query=%27rele%253dAngelj%25c4%258dek%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page=" 5
