#!/bin/bash

dirname="Analiza"
url="https://www.dlib.si/results/?=&query=%27rele%253dAnaliza%2b(Ljubljana)%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"

if [ ! -f "cookies.txt" ]; then
  echo "Please extract the 'cookies.txt' from www.dlib.si with the appropriate plugin for your web browser. Save 'cookies.txt' in the same directory as $dirname.sh"
  exit
fi

mkdir -p "$dirname"
cd "$dirname" || exit

wget --load-cookies ../cookies.txt -w 7 -O htmldump "$url"

################## Extract pdf download links #################################

sed 's/\/PDF/\/PDF\n/' htmldump \
  | sed 's/\/stream/\n\/stream/g' \
  | awk 'length == 72' \
  | sed '/PDF/!d' \
  | sed 's/^/https\:\/\/www.dlib.si/g' > pdflist

################## Extract txt download links #################################

sed 's/\/TEXT/\/TEXT\n/' htmldump \
  | sed 's/\/stream/\n\/stream/g' \
  | awk 'length == 73' \
  | sed '/TEXT/!d' \
  | sed 's/^/https\:\/\/www.dlib.si/g' > textlist

#################### create pdf downloader and run it #########################

PDFSEXPECTED=$(wc -l < pdflist)

for (( COUNTER=1; COUNTER<="$PDFSEXPECTED"; COUNTER+=1 ));
do
  echo "PDF.$COUNTER.pdf" >> pdfsexpected
done

sort > pdfsexpectedsorted < pdfsexpected

find PDF* -maxdepth 1 -name "PDF*" \
  | sort > pdfsdownloadedsorted

comm pdfsdownloadedsorted  pdfsexpectedsorted -3 \
  | sed 's/[PDF\.,\.pdf]//g' \
  | tr -d '[:blank:]' > pdflinkstodownload

sed -e "s/^/\`sed '/g" \
  -e "s/$/\!d\' pdflist\`/g" > pdfslist < pdflinkstodownload

sed 's/^/wget -w 5 --load-cookies ..\/cookies.txt -O PDF./g;s/$/.pdf/g' > pdffilenamer < pdflinkstodownload

echo "#!/bin/bash" > pdfrunner

chmod +x pdfrunner

paste -d ' ' pdffilenamer pdfslist >> pdfrunner

./pdfrunner

##################### create txt downloader and run it ########################

TEXTSEXPECTED=$(wc -l < textlist)

for (( COUNTER=1; COUNTER<="$TEXTSEXPECTED"; COUNTER+=1 ));
do
  echo "TEXT.$COUNTER.txt" >> textsexpected
done

sort > textsexpectedsorted < textsexpected

find TEXT* -maxdepth 1 -name "TEXT*" \
  | sort > textsdownloadedsorted

comm textsdownloadedsorted  textsexpectedsorted -3 \
  | sed 's/[TEXT\.,\.txt]//g' \
  | tr -d '[:blank:]' > textlinkstodownload

sed -e "s/^/\`sed '/g" \
  -e "s/$/\!d\' textlist\`/g" > textslist < textlinkstodownload

sed 's/^/wget -w 5 --load-cookies ..\/cookies.txt -O TEXT./g;s/$/.txt/g' > textfilenamer < textlinkstodownload

echo "#!/bin/bash" > textrunner

chmod +x textrunner

paste -d ' ' textfilenamer textslist >> textrunner

./textrunner

######################## find and remove wrong downloads ######################

find . -type f -exec grep -q 'DOCTYPE html' '{}' \; -delete;
find . -type f -empty -delete

################################# report ######################################

echo "$(( PDFSEXPECTED-$(find PDF* -maxdepth 1 -name "PDF*"| wc -l) )) pdfs are missing."
echo "$(( TEXTSEXPECTED-$(find TEXT* -maxdepth 1 -name "TEXT*"| wc -l) )) texts are missing."
echo "If some files are missing, run the script again"

################################ cleanup ######################################

rm pdf*
rm text*
