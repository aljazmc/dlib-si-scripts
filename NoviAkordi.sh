#!/bin/bash
#
# Downloads Novi Akordi from dlib.si into Novi Akordi/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Novi Akordi" \
  "https://dlib.si/results/?query=%27source%3dnotno+gradivo%40OR%40source%3dkoncertni+sporedi%40OR%40source%3dzvo%c4%8dni+posnetki%27&sortDir=ASC&sort=date&frelation=Novi+akordi&pageSize=100&page=" 5 SIBELIUS
