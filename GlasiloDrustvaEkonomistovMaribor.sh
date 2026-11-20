#!/bin/bash
#
# Downloads Glasilo Drustva Ekonomistov Maribor from dlib.si into Glasilo Drustva Ekonomistov Maribor/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Glasilo Drustva Ekonomistov Maribor" \
  "https://www.dlib.si/results/?=&query=%27rele%253dGlasilo%2bDru%25c5%25a1tva%2bekonomistov%2bMaribor%27&pageSize=100&sortDir=ASC&sort=date"
