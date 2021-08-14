#!/usr/bin/env bash

scriptPath="`dirname \"$0\"`"

if [ ! -z "$OSX_TARGET_ARCHITECTURES" ]; then
  $scriptPath/build-native.sh release -osx-architectures $OSX_TARGET_ARCHITECTURES
else
  $scriptPath/build-native.sh release
fi
