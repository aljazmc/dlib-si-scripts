#!/bin/bash
#
# Downloads Obzornik Zdravstvene Nege from dlib.si into Obzornik Zdravstvene Nege/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Obzornik Zdravstvene Nege" \
  "https://www.dlib.si/results/?=&query=%27rele%253dObzornik%2bzdravstvene%2bnege%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
