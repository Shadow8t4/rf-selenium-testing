#!/usr/bin/bash

if [ ! -d "report" ]; then
    mkdir report
fi

export PATH=$PATH:$(pwd)/
echo $PATH
java -jar selenium-server-standalone.jar &
sleep 5
robot -d report test.robot
kill $!
