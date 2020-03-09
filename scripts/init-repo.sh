#!/bin/bash

install -d balena-digi
pushd balena-digi
repo init -u https://github.com/alexgg/balena-digi-manifest -b thud
repo sync -j8 --no-repo-verify

