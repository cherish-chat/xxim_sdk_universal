#!/bin/bash

CURR_VERSION=xxim_sdk-v`awk '/^version: /{print $2}' packages/xxim_sdk/pubspec.yaml`

# iOS & macOS
APPLE_HEADER="release_tag_name = '$CURR_VERSION' # generated; do not edit"
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/flutter_xxim_sdk/ios/flutter_xxim_sdk.podspec
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/flutter_xxim_sdk/macos/flutter_xxim_sdk.podspec
rm packages/flutter_xxim_sdk/macos/*.bak packages/flutter_xxim_sdk/ios/*.bak

# CMake platforms (Linux, Windows, and Android)
CMAKE_HEADER="set(LibraryVersion \"$CURR_VERSION\") # generated; do not edit"
for CMAKE_PLATFORM in android linux windows
do
    sed -i.bak "1 s/.*/$CMAKE_HEADER/" packages/flutter_xxim_sdk/$CMAKE_PLATFORM/CMakeLists.txt
    rm packages/flutter_xxim_sdk/$CMAKE_PLATFORM/*.bak
done

git add packages/flutter_xxim_sdk/
