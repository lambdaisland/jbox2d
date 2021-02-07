#!/bin/bash

set -ex

sed "s/version>2.3.*</version>2.3.1.$(git short | wc -l)</" -i jbox2d-*/pom.xml
