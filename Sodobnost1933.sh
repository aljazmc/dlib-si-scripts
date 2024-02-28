#!/bin/bash

dirname="Sodobnost 1933"
url="https://www.dlib.si/results/?=&query=%27rele%253dSodobnost%2b(1933)%27&pageSize=100&sortDir=ASC&sort=date&page="

if [ -d "$dirname" ]; then
  echo "Directory \"$dirname\" with downloads already exists. If you want to download periodical again, remove that directory and start the script again."
  exit
fi

mkdir "$dirname"
cd "$dirname"

for i in {1..11}
do
  wget -w 5 -O "$i" "$url""$i"
done

cat {1..11} > htmldump

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

