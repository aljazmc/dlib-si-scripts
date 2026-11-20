#!/bin/bash
#
# Downloads Drzavni Zakonik za Kraljevine in Dezele v Drzavnem Zboru Zastopane from dlib.si into Drzavni Zakonik za Kraljevine in Dezele v Drzavnem Zboru Zastopane/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Drzavni Zakonik za Kraljevine in Dezele v Drzavnem Zboru Zastopane" \
  "https://www.dlib.si/results/?=&query=%27rele%253dDr%25c5%25beavni%2bzakonik%2bza%2bkraljevine%2bin%2bde%25c5%25beele%2bv%2bdr%25c5%25beavnem%2bzboru%2bzastopane%27&pageSize=100&sortDir=ASC&sort=date&page=" 46
