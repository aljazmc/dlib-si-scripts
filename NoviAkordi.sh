#!/bin/bash

dirname="Novi Akordi"
scriptname=$(echo "$dirname" | tr -d ' ')
url="https://dlib.si/results/?query=%27source%3dnotno+gradivo%40OR%40source%3dkoncertni+sporedi%40OR%40source%3dzvo%c4%8dni+posnetki%27&sortDir=ASC&sort=date&frelation=Novi+akordi&pageSize=100&page="

if [ ! -f "cookies.txt" ]; then
  echo "Please extract the 'cookies.txt' from www.dlib.si with the appropriate plugin for your web browser. Save 'cookies.txt' in the same directory as $scriptname.sh"
  exit
fi

mkdir -p "$dirname"
cd "$dirname" || exit

wget --load-cookies ../cookies.txt -w 7 "$url"{1..5}

cat index* > htmldump

HTMLDUMP=$(cat htmldump)

if [[ $HTMLDUMP == *"NAPAKA"* ]]; then
  echo "" \
  && echo "There were some problems with downloading files from dlib.si. Please, try again after a few moments." \
  && rm index* htmldump \
  && exit
fi

################## Extract pdf download links #################################

sed 's/\/PDF/\/PDF\n/' htmldump \
  | sed 's/\/stream/\n\/stream/g' \
  | awk 'length == 72' \
  | sed '/PDF/!d' \
  | sed 's/^/https\:\/\/www.dlib.si/g' > pdflist

[ ! -s pdflist ] \
  && echo "PDF download links weren't extracted successfully. Exiting..." \
  && exit

################## Extract txt download links #################################

sed 's/\/SIBELIUS/\/SIBELIUS\n/' htmldump \
  | sed 's/\/stream/\n\/stream/g' \
  | awk 'length == 77' \
  | sed '/SIBELIUS/!d' \
  | sed 's/^/https\:\/\/www.dlib.si/g' > siblist

[ ! -s siblist ] \
  && echo "SIB download links weren't extracted successfully. Exiting..." \
  && exit

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

SIBELIUSSEXPECTED=$(wc -l < siblist)

for (( COUNTER=1; COUNTER<="$SIBELIUSSEXPECTED"; COUNTER+=1 ));
do
  echo "SIBELIUS.$COUNTER.sib" >> sibsexpected
done

sort > sibsexpectedsorted < sibsexpected

find SIBELIUS* -maxdepth 1 -name "SIBELIUS*" \
  | sort > sibsdownloadedsorted

comm sibsdownloadedsorted  sibsexpectedsorted -3 \
  | sed 's/[SIBELIUS\.,\.sib]//g' \
  | tr -d '[:blank:]' > siblinkstodownload

sed -e "s/^/\`sed '/g" \
  -e "s/$/\!d\' siblist\`/g" > sibslist < siblinkstodownload

sed 's/^/wget -w 5 --load-cookies ..\/cookies.txt -O SIBELIUS./g;s/$/.sib/g' > sibfilenamer < siblinkstodownload

echo "#!/bin/bash" > sibrunner

chmod +x sibrunner

paste -d ' ' sibfilenamer sibslist >> sibrunner

./sibrunner

######################## find and remove wrong downloads ######################

find . -type f -exec grep -q 'DOCTYPE html' '{}' \; -delete;
find . -type f -empty -delete

################################# report ######################################

echo "$(( PDFSEXPECTED-$(find PDF* -maxdepth 1 -name "PDF*"| wc -l) )) pdfs are missing."
echo "$(( SIBELIUSSEXPECTED-$(find SIBELIUS* -maxdepth 1 -name "SIBELIUS*"| wc -l) )) sibs are missing."
echo "If some files are missing, run the script again"

################################ cleanup ######################################

rm pdf*
rm sib*
