#!/bin/bash

dirname="Mednarodna Revija za Javno Upravo"
url="https://www.dlib.si/results/?=&query=%27rele%253dMednarodna%2brevija%2bza%2bjavno%2bupravo%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"

if [ -d "$dirname" ]; then
  echo "Directory \"$dirname\" with downloads already exists. If you want to download periodical again, remove that directory and start the script again."
  exit
fi

mkdir "$dirname"
cd "$dirname"

