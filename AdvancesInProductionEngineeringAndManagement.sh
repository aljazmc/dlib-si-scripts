#!/bin/bash
#
# Downloads Advances in Production Engineering and Management from dlib.si into Advances in Production Engineering and Management/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Advances in Production Engineering and Management" \
  "https://www.dlib.si/results/?=&query=%27rele%253dAdvances%2bin%2bproduction%2bengineering%2band%2bmanagement%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
