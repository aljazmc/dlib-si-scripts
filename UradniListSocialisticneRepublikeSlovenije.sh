#!/bin/bash
#
# Downloads Uradni List Socialisticne Republike Slovenije from dlib.si into Uradni List Socialisticne Republike Slovenije/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Uradni List Socialisticne Republike Slovenije" \
  "https://www.dlib.si/results/?=&query=%27rele%253dUradni%2blist%2bSocialisti%25c4%258dne%2bRepublike%2bSlovenije%27&pageSize=100&sortDir=ASC&sort=date&page=" 10
