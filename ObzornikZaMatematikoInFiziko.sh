#!/bin/bash
#
# Downloads Obzornik za Matematiko in Fiziko from dlib.si into Obzornik za Matematiko in Fiziko/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Obzornik za Matematiko in Fiziko" \
  "https://www.dlib.si/results/?=&query=%27rele%253dObzornik%2bza%2bmatematiko%2bin%2bfiziko%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
