#!/usr/bin/bash
# Manual activation

if [ ! -d "report" ]; then
    mkdir report
fi

echo $PATH
java -jar selenium-server-standalone.jar &
sleep 5
robot -d report test.robot
killall java
