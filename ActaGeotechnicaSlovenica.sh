#!/bin/bash

dirname="Acta Geotechnica Slovenica"
url="https://www.dlib.si/results/?=&query=%27rele%253dActa%2bgeotechnica%2bSlovenica%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"

if [ -d "$dirname" ]; then
  echo "Directory \"$dirname\" with downloads already exists. If you want to download periodical again, remove that directory and start the script again."
  exit
fi

mkdir "$dirname"
cd "$dirname"

