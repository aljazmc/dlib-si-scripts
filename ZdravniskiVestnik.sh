#!/bin/bash

dirname="Zdravniski Vestnik"
url="https://www.dlib.si/results/?=&query=%27rele%253dZdravni%25c5%25a1ki%2bvestnik%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page="

if [ -d "$dirname" ]; then
  echo "Directory \"$dirname\" with downloads already exists. If you want to download periodical again, remove that directory and start the script again."
  exit
fi
