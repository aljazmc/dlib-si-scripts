#!/bin/bash

dirname="Acrocephalus"
url="https://www.dlib.si/results/?=&query=%27rele%253dAcrocephalus%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100&page="

if [ -d "$dirname" ]; then
  echo "Directory \"$dirname\" with downloads already exists. If you want to download periodical again, remove that directory and start the script again."
  exit
fi

mkdir "$dirname"
cd "$dirname"

wget -w 5 "$url"{1..2}

cat index* > htmldump
