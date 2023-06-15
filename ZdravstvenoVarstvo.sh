#!/bin/bash

dirname="Zdravstveno Varstvo"
url="https://www.dlib.si/results/?=&query=%27rele%253dZdravstveno%2bvarstvo%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date"

if [ -d "$dirname" ]; then
  echo "Directory \"$dirname\" with downloads already exists. If you want to download periodical again, remove that directory and start the script again."
  exit
fi

mkdir "$dirname"
cd "$dirname"
