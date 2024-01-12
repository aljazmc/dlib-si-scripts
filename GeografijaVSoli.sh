#!/bin/bash

dirname="Geografija v Soli"
url="https://www.dlib.si/results/?query=%27rele%253dGeografija%2bv%2b%25c5%25a1oli%27&pageSize=100&sortDir=ASC&sort=date&fformattypeserial=journal"

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

