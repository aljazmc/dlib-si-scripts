#!/bin/bash
#
# Downloads Uradno Glasilo Slovenskih Obcin from dlib.si into Uradno Glasilo Slovenskih Obcin/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Uradno Glasilo Slovenskih Obcin" \
  "https://www.dlib.si/results/?=&query=%27rele%253dUradno%2bglasilo%2bslovenskih%2bob%25c4%258din%27&sortDir=ASC&sort=date&pageSize=100&page=" 8
