#!/bin/bash
#
# Downloads Ekonomsko Ogledalo from dlib.si into Ekonomsko Ogledalo/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Ekonomsko Ogledalo" \
  "https://www.dlib.si/results/?=&query=%27rele%253dEkonomsko%2bogledalo%27&pageSize=100&sortDir=ASC&sort=date&page=" 2
