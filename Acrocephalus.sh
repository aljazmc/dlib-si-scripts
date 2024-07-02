#!/bin/bash

dirname="Acrocephalus"
abspath="$(cd "$(dirname "$dirname")" && pwd -P)/$(basename "$dirname")/"
tempdir=$(mktemp -d)
url="https://www.dlib.si/results/?=&query=%27rele%253dAcrocephalus%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100&page="

cd "$tempdir" || exit
trap 'rm -rf -- "$tempdir"' EXIT

wget -w 5 "$url"{1..2}

cat index* > htmldump

cat htmldump \
  | sed 's/\/PDF/\/PDF\n/' \
  | sed 's/\/stream/\n\/stream/g' \
  | awk 'length == 72' \
  | sed '/PDF/!d' \
  | sed 's/^/https\:\/\/www.dlib.si/g' > pdflist

head -1 pdflist > pdfstodownload
cat pdflist >> pdfstodownload

cat htmldump \
  | sed 's/\/TEXT/\/TEXT\n/' \
  | sed 's/\/stream/\n\/stream/g' \
  | awk 'length == 73' \
  | sed '/TEXT/!d' \
  | sed 's/^/https\:\/\/www.dlib.si/g' > textlist

head -1 textlist > textstodownload
cat textlist >> textstodownload

cat pdfstodownload | xargs wget -w 4
find . -type f -name "PDF*" -print0 | xargs -0I {} sh -c 'mv "{}" "{}".pdf'

cat textstodownload | xargs wget -w 2
find . -type f -name "TEXT*" -print0 | xargs -0I {} sh -c 'mv "{}" "{}".txt'

rm index* htmldump pdflist pdfstodownload PDF.pdf textlist textstodownload TEXT.txt
