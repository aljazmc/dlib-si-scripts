#!/bin/bash
#
# Downloads Revija za Univerzalno Odlicnost from dlib.si into Revija za Univerzalno Odlicnost/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Revija za Univerzalno Odlicnost" \
  "https://www.dlib.si/results/?=&query=%27rele%253dRevija%2bza%2buniverzalno%2bodli%25c4%258dnost%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
