#!/bin/bash

dirname="Izzivi Managementu"
url="https://www.dlib.si/results/?=&query=%27rele%253dIzzivi%2bmanagementu%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"

if [ -d "$dirname" ]; then
  echo "Directory \"$dirname\" with downloads already exists. If you want to download periodical again, remove that directory and start the script again."
  exit
fi

mkdir "$dirname"
cd "$dirname"

wget -w 5 "$url"

