#!/bin/bash

dirname="Jutro"
url="https://www.dlib.si/results/?=&query=%27rele%253dJutro%2b(Ljubljana)%27&pageSize=100&fformattypeserial=newspaper&sortDir=ASC&sort=date&page="

if [ -d "$dirname" ]; then
  echo "Directory \"$dirname\" with downloads already exists. If you want to download periodical again, remove that directory and start the script again."
  exit
fi

