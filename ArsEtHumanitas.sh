#!/bin/bash
#
# Downloads Ars et Humanitas from dlib.si into Ars et Humanitas/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Ars et Humanitas" \
  "https://www.dlib.si/results/?=&query=%27rele%253dArs%2bet%2bhumanitas%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
