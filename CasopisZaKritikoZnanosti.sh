#!/bin/bash
#
# Downloads Casopis za Kritiko Znanosti from dlib.si into Casopis za Kritiko Znanosti/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Casopis za Kritiko Znanosti" \
  "https://www.dlib.si/results/?=&query=%27rele%253d%25c4%258casopis%2bza%2bkritiko%2bznanosti%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100&page=" 2
