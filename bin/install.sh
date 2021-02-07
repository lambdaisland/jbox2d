#!/bin/bash

set -ex

bin/update_version.sh
bin/munge_sources.sh

pushd jbox2d-library
mvn install -DskipTests
popd

pushd jbox2d-serialization
mvn install -DskipTests
popd

pushd jbox2d-testbed
mvn install -DskipTests
popd

pushd jbox2d-testbed-jogl
mvn install -DskipTests
popd
