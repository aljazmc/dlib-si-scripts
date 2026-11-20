#!/bin/bash
#
# Downloads Vestnik Instituta za Marksisticne Studije from dlib.si into Vestnik Instituta za Marksisticne Studije/, see README.md

# shellcheck source=lib/dlib.sh
source "$(dirname "$0")/lib/dlib.sh"

download "Vestnik Instituta za Marksisticne Studije" \
  "https://www.dlib.si/results/?=&query=%27rele%253dVestnik%2bIn%25c5%25a1tituta%2bza%2bmarksisti%25c4%258dne%2b%25c5%25a1tudije%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"
