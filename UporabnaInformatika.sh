#!/bin/bash
#
# Downloads Uporabna Informatika from dlib.si into Uporabna Informatika/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Uporabna Informatika" \
  "https://www.dlib.si/results/?=&query=%27rele%253dUporabna%2binformatika%2b(Ljubljana)%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page=" 2
