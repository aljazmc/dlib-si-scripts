#!/bin/bash

dirname="Casopis za Kritiko Znanosti"
url="https://www.dlib.si/results/?=&query=%27rele%253d%25c4%258casopis%2bza%2bkritiko%2bznanosti%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100&page="

if [ -d "$dirname" ]; then
  echo "Directory \"$dirname\" with downloads already exists. If you want to download periodical again, remove that directory and start the script again."
  exit
fi

