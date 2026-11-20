#!/bin/bash
#
# Downloads Organizacija from dlib.si into Organizacija/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Organizacija" \
  "https://www.dlib.si/results/?=&query=%27rele%253dOrganizacija%2b(Kranj)%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page=" 2
