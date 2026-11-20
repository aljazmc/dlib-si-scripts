#!/bin/bash
#
# Downloads Socialno Delo Mix from dlib.si into Socialno Delo Mix/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Socialno Delo Mix" \
  "https://www.dlib.si/results/?=&query=%27rele%253dSocialno%2bdelo%27&pageSize=100&sortDir=ASC&sort=date&page=" 16
