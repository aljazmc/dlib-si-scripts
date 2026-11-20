#!/bin/bash
#
# Downloads Uradni Vestnik Mestne obcine Ptuj from dlib.si into Uradni Vestnik Mestne obcine Ptuj/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Uradni Vestnik Mestne obcine Ptuj" \
  "https://www.dlib.si/results/?=&query=%27rele%253dUradni%2bvestnik%2bMestne%2bob%25c4%258dine%2bPtuj%27&sortDir=ASC&sort=date&pageSize=100&page=" 3
