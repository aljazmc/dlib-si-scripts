#!/bin/bash
#
# Downloads Folia Biologica et Geologica from dlib.si into Folia Biologica et Geologica/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Folia Biologica et Geologica" \
  "https://www.dlib.si/results/?=&query=%27rele%253dFolia%2bbiologica%2bet%2bgeologica%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
