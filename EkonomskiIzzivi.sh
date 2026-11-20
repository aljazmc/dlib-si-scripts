#!/bin/bash
#
# Downloads Ekonomski Izzivi from dlib.si into Ekonomski Izzivi/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Ekonomski Izzivi" \
  "https://www.dlib.si/results/?=&query=%27rele%253dEkonomski%2bizzivi%27&pageSize=100&sortDir=ASC&sort=date"
