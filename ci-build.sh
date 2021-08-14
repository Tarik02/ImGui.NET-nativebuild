#!/usr/bin/env bash

scriptPath="`dirname \"$0\"`"

if [ ! -z "$OSX_TARGET_ARCHITECTURE" ]; then
  $scriptPath/build-native.sh release -osx-arch $OSX_TARGET_ARCHITECTURE
  mv cimgui/build/Release/cimgui.dylib cimgui/build/Release/cimgui.$OSX_TARGET_ARCHITECTURE.dylib
else
  $scriptPath/build-native.sh release
fi
