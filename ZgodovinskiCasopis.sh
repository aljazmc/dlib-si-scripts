#!/bin/bash

dirname="Zgodovinski Casopis"
url="https://www.dlib.si/results/?=&query=%27rele%253dZgodovinski%2b%25c4%258dasopis%27&pageSize=100&fformattypeserial=journal&sortDir=ASC&sort=date&page="

if [ -d "$dirname" ]; then
  echo "Directory \"$dirname\" with downloads already exists. If you want to download periodical again, remove that directory and start the script again."
  exit
fi
