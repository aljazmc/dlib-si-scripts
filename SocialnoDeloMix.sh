#!/bin/bash

dirname="Socialno Delo Mix"
url="https://www.dlib.si/results/?=&query=%27rele%253dSocialno%2bdelo%27&pageSize=100&sortDir=ASC&sort=date&page="

if [ -d "$dirname" ]; then
  echo "Directory \"$dirname\" with downloads already exists. If you want to download periodical again, remove that directory and start the script again."
  exit
fi

mkdir "$dirname"
cd "$dirname"

for i in {1..16}
do
  wget -w 5 -O "$i" "$url""$i"
done

