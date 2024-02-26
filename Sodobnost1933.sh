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

