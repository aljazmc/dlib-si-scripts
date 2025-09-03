#!/bin/bash

dirname="Uradni vestnik Mestne obcine Ptuj"
url="https://www.dlib.si/results/?=&query=%27rele%253dUradni%2bvestnik%2bMestne%2bob%25c4%258dine%2bPtuj%27&sortDir=ASC&sort=date&pageSize=100&page="

if [ -d "$dirname" ]; then
  echo "Directory \"$dirname\" with downloads already exists. If you want to download periodical again, remove that directory and start the script again."
  exit
fi

mkdir "$dirname"
cd "$dirname" || exit

wget --max-redirect=3 -w 1 "$url"{1..3}

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

cat pdfstodownload | xargs wget --max-redirect=3 -w 4
find . -type f -name "PDF*" -print0 | xargs -0I {} sh -c 'mv "{}" "{}".pdf'

cat textstodownload | xargs wget --max-redirect=3 -w 2
find . -type f -name "TEXT*" -print0 | xargs -0I {} sh -c 'mv "{}" "{}".txt'

rm *[0-9] htmldump pdflist pdfstodownload PDF.pdf textlist textstodownload TEXT.txt

