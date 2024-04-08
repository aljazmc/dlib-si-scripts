#!/bin/bash

dirname="Jezikoslovni Zapiski"
url="https://www.dlib.si/results/?=&query=%27rele%253dJezikoslovni%2bzapiski%27&fformattypeserial=journal&sortDir=ASC&sort=date&pageSize=100"

if [ -d "$dirname" ]; then
  echo "Directory \"$dirname\" with downloads already exists. If you want to download periodical again, remove that directory and start the script again."
  exit
fi

