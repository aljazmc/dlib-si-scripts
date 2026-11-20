#!/bin/bash
#
# Downloads Annales Series Historia Naturalis from dlib.si into Annales Series Historia Naturalis/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Annales Series Historia Naturalis" \
  "https://www.dlib.si/results/?query=%27rele%253dAnnales.%2bSeries%2bhistoria%2bnaturalis%27&pageSize=100&sortDir=ASC&sort=date&fformattypeserial=journal"
