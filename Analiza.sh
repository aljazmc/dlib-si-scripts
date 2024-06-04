#!/bin/bash

dirname="Analiza"
url="https://www.dlib.si/results/?=&query=%27rele%253dAnaliza%2b(Ljubljana)%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"

if [ -d "$dirname" ]; then
  echo "Directory \"$dirname\" with downloads already exists. If you want to download periodical again, remove that directory and start the script again."
  exit
fi

mkdir "$dirname"
cd "$dirname"

wget -w 5 "$url"

cat index* > htmldump

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

wget -w 4 -i pdfstodownload
find . -type f -name "PDF*" -print0 | xargs -0I {} sh -c 'mv "{}" "{}".pdf'

wget -w 2 -i textstodownload
find . -type f -name "TEXT*" -print0 | xargs -0I {} sh -c 'mv "{}" "{}".txt'

rm index* htmldump pdflist pdfstodownload PDF.pdf textlist textstodownload TEXT.txt
