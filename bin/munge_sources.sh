#!/bin/bash

set -ex

pushd jbox2d-library
./float2double.sh
popd

pushd jbox2d-serialization
./float2double.sh
popd

pushd jbox2d-testbed
./float2double.sh
popd

pushd jbox2d-testbed-jogl
./float2double.sh
popd
