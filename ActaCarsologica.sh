#!/bin/bash
#
# Downloads Acta Carsologica from dlib.si into Acta Carsologica/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Acta Carsologica" \
  "https://www.dlib.si/results/?=&query=%27rele%253dActa%2bcarsologica%27&pageSize=100&sortDir=ASC&sort=date&page=" 12
