#!/bin/bash

bin/update_version.sh
bin/munge_sources.sh

pushd jbox2-library
mvn install -DksipTests
popd

pushd jbox2-serialization
mvn install -DskipTests
popd

pushd jbox2-testbed
mvn install -DskipTests
popd
