#!/bin/bash

pushd jbox2d-library
./float2double.sh
popd

pushd jbox2d-serialization
./float2double.sh
popd
