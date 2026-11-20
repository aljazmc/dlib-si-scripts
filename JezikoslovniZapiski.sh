#!/bin/bash
#
# Downloads Jezikoslovni Zapiski from dlib.si into Jezikoslovni Zapiski/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Jezikoslovni Zapiski" \
  "https://www.dlib.si/results/?=&query=%27rele%253dJezikoslovni%2bzapiski%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
