#!/bin/bash
#
# Downloads Uradni List Ljudske Republike Slovenije from dlib.si into Uradni List Ljudske Republike Slovenije/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Uradni List Ljudske Republike Slovenije" \
  "https://www.dlib.si/results/?=&query=%27rele%253dUradni%2blist%2bLjudske%2brepublike%2bSlovenije%27&sortDir=ASC&sort=date&pageSize=100&page=" 10
