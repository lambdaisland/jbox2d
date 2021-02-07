#!/bin/bash

sed "s/version>2.3.*</version>2.3.1.$(git short | wc -l)</" -i {jbox2d-library,jbox2d-serialization,jbox2d-testbed}/pom.xml
