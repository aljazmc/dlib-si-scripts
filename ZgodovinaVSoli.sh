#!/bin/bash

dirname="Zgodovina v Soli"
abspath="$(cd "$(dirname "$dirname")" && pwd -P)/$(basename "$dirname")/"
tempdir=$(mktemp -d)
url="https://www.dlib.si/results/?=&query=%27rele%253dZgodovina%2bv%2b%25c5%25a1oli%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"

cd "$tempdir" || exit
trap 'rm -rf -- "$tempdir"' EXIT

wget -O htmldump "$url"

sed 's/\/PDF/\/PDF\n/' htmldump \
  | sed 's/\/stream/\n\/stream/g' \
  | awk 'length == 72' \
  | sed '/PDF/!d' \
  | sed 's/^/https\:\/\/www.dlib.si/g' > pdflist

head -1 pdflist > pdfstodownload
cat pdflist >> pdfstodownload

sed 's/\/TEXT/\/TEXT\n/' htmldump \
  | sed 's/\/stream/\n\/stream/g' \
  | awk 'length == 73' \
  | sed '/TEXT/!d' \
  | sed 's/^/https\:\/\/www.dlib.si/g' > textlist

head -1 textlist > textstodownload
cat textlist >> textstodownload

mkdir -p "$abspath"

wget -w 2 -i pdfstodownload && rm PDF
find . -type f -name "PDF*" -print0 | xargs -0I {} sh -c "mv \"{}\" \"$abspath{}\".pdf"

wget -w 2 -i textstodownload && rm TEXT
find . -type f -name "TEXT*" -print0 | xargs -0I {} sh -c "mv \"{}\" \"$abspath{}\".txt"
