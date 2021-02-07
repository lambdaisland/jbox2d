#!/bin/zsh

./float2double.sh
./update_version.sh
mvn deploy -Dmaven.test.skip=true
