#!/bin/bash

dirname="Drzavni Zakonik za Kraljevine in Dezele v Drzavnem Zboru Zastopane"
url="https://www.dlib.si/results/?=&query=%27rele%253dDr%25c5%25beavni%2bzakonik%2bza%2bkraljevine%2bin%2bde%25c5%25beele%2bv%2bdr%25c5%25beavnem%2bzboru%2bzastopane%27&pageSize=100&sortDir=ASC&sort=date&page="

if [ -d "$dirname" ]; then
  echo "Directory \"$dirname\" with downloads already exists. If you want to download periodical again, remove that directory and start the script again."
  exit
fi

mkdir "$dirname"
cd "$dirname"

for i in {1..46}
do
  wget --max-redirect=3 -w 5 -O "$i" "$url""$i"
done

cat {1..46} > htmldump

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

cat pdfstodownload | xargs wget --max-redirect=3 -w 4
find . -type f -name "PDF*" -print0 | xargs -0I {} sh -c 'mv "{}" "{}".pdf'

cat textstodownload | xargs wget --max-redirect=3 -w 2
find . -type f -name "TEXT*" -print0 | xargs -0I {} sh -c 'mv "{}" "{}".txt'

rm *[0-9] htmldump pdflist pdfstodownload PDF.pdf textlist textstodownload TEXT.txt
