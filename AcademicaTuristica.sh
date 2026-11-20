#!/bin/bash
#
# Downloads Academica Turistica from dlib.si into Academica Turistica/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Academica Turistica" \
  "https://www.dlib.si/results/?=&query=%27rele%253dAcademica%2bturistica%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"
