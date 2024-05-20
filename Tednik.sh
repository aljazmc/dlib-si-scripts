#!/bin/bash

dirname="Tednik"
url="https://www.dlib.si/results/?=&query=%27rele%253dTednik%2b(Ptuj)%27&sortDir=ASC&sort=date&pageSize=100&page="

if [ -d "$dirname" ]; then
  echo "Directory \"$dirname\" with downloads already exists. If you want to download periodical again, remove that directory and start the script again."
  exit
fi

mkdir "$dirname"
cd "$dirname"

for i in {1..43}
do
  wget -w 5 -O "$i" "$url""$i"
done

