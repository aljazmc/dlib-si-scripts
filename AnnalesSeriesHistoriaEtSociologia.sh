#!/bin/bash
#
# Downloads Annales Series Historia et Sociologia from dlib.si into Annales Series Historia et Sociologia/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Annales Series Historia et Sociologia" \
  "https://www.dlib.si/results/?query=%27rele%253dAnnales.%2bSeries%2bhistoria%2bet%2bsociologia%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
