#!/bin/bash
#
# Downloads Acta Medico Biotechnica from dlib.si into Acta Medico Biotechnica/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Acta Medico Biotechnica" \
  "https://www.dlib.si/results/?=&query=%27rele%253dActa%2bmedico-biotechnica%27&sortDir=ASC&sort=date&pageSize=100&page=" 3
