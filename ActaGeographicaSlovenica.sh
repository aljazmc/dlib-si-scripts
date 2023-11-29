#!/bin/bash

dirname="Acta Geographica Slovenica"
url="https://www.dlib.si/results/?=&query=%27rele%253dActa%2bgeographica%2bSlovenica%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"

if [ -d "$dirname" ]; then
  echo "Directory \"$dirname\" with downloads already exists. If you want to download periodical again, remove that directory and start the script again."
  exit
fi

mkdir "$dirname"
cd "$dirname"

wget -w 5 "$url"

cat index* > htmldump

