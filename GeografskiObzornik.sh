#!/bin/bash
#
# Downloads Geografski Obzornik from dlib.si into Geografski Obzornik/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Geografski Obzornik" \
  "https://www.dlib.si/results/?=&query=%27rele%253dGeografski%2bobzornik%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page=" 3
