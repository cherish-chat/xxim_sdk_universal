#!/bin/bash

# Setup
BUILD_DIR=platform-build
mkdir $BUILD_DIR
cd $BUILD_DIR

# Build static libs
for TARGET in \
        aarch64-apple-ios x86_64-apple-ios aarch64-apple-ios-sim \
        x86_64-apple-darwin aarch64-apple-darwin
do
    rustup target add $TARGET
    cargo build -r --target=$TARGET
done

# Create XCFramework zip
FRAMEWORK="XximSdk.xcframework"
rm -rf $FRAMEWORK
LIBNAME=libxxim_sdk.a
mkdir mac-lipo ios-sim-lipo
IOS_SIM_LIPO=ios-sim-lipo/$LIBNAME
MAC_LIPO=mac-lipo/$LIBNAME
lipo -create -output $IOS_SIM_LIPO \
        ../../target/aarch64-apple-ios-sim/release/$LIBNAME \
        ../../target/x86_64-apple-ios/release/$LIBNAME
lipo -create -output $MAC_LIPO \
        ../../target/aarch64-apple-darwin/release/$LIBNAME \
        ../../target/x86_64-apple-darwin/release/$LIBNAME
xcodebuild -create-xcframework \
        -library $IOS_SIM_LIPO \
        -library $MAC_LIPO \
        -library ../../target/aarch64-apple-ios/release/$LIBNAME \
        -output $FRAMEWORK
zip -r $FRAMEWORK.zip $FRAMEWORK

# Cleanup
rm -rf ios-sim-lipo mac-lipo
cp ../../target/aarch64-apple-darwin/release/libxxim_sdk.dylib ../../packages/xxim_sdk/
cp ../../target/aarch64-apple-darwin/release/libxxim_sdk.dylib
mv $FRAMEWORK.zip ../../packages/flutter_xxim_sdk/macos/Frameworks/xxim_sdk-v0.0.2.zip
cd ../../packages/flutter_xxim_sdk/macos/Frameworks/
unzip xxim_sdk-v0.0.2.zip