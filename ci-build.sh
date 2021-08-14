#!/usr/bin/env bash

scriptPath="`dirname \"$0\"`"

if [ ! -z "$OSX_TARGET_ARCHITECTURE" ]; then
  $scriptPath/build-native.sh release -osx-arch $OSX_TARGET_ARCHITECTURE
  if [[ "$OSX_TARGET_NAME" != "cimgui.dylib" ]]; then
    mv cimgui/build/Release/cimgui.dylib cimgui/build/Release/$OSX_TARGET_NAME
  fi
else
  $scriptPath/build-native.sh release
fi
