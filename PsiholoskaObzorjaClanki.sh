#!/bin/bash

dirname="Psiholoska Obzorja Clanki"
url="https://www.dlib.si/results/?=&query=%27rele%253dPsiholo%25c5%25a1ka%2bobzorja%2b(Ljubljana)%27&fformattypeserial=article&sortDir=ASC&sort=date&pageSize=100&page="

if [ -d "$dirname" ]; then
  echo "Directory \"$dirname\" with downloads already exists. If you want to download periodical again, remove that directory and start the script again."
  exit
fi

