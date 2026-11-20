#!/bin/bash
#
# Downloads Delovni Zvezki Zavod za Makroekonomske Analize in Razvoj from dlib.si into Delovni Zvezki Zavod za Makroekonomske Analize in Razvoj/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Delovni Zvezki Zavod za Makroekonomske Analize in Razvoj" \
  "https://www.dlib.si/results/?=&query=%27rele%253dDelovni%2bzvezki%2b-%2bZavod%2bRS%2bza%2bmakroekonomske%2banalize%2bin%2brazvoj%27&pageSize=100&sortDir=ASC&sort=date"
