#!/bin/bash

dirname="Acta Agriculturae Slovenica"
url="https://www.dlib.si/results/?=&query=%27rele%253dActa%2bagriculturae%2bSlovenica%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"

if [ -d "$dirname" ]; then
  echo "Directory \"$dirname\" with downloads already exists. If you want to download periodical again, remove that directory and start the script again."
  exit
fi

mkdir "$dirname"
cd "$dirname"

wget -w 5 "$url"

cat index* > htmldump

cat htmldump \
  | sed 's/\/PDF/\/PDF\n/' \
  | sed 's/\/stream/\n\/stream/g' \
  | awk 'length == 72' \
  | sed '/PDF/!d' \
  | sed 's/^/https\:\/\/www.dlib.si/g' > pdflist

head -1 pdflist > pdfstodownload
cat pdflist >> pdfstodownload

