#!/bin/bash

# Setup
BUILD_DIR=platform-build
mkdir $BUILD_DIR
cd $BUILD_DIR

# Build static libs
for TARGET in \
        aarch64-apple-darwin
do
    rustup target add $TARGET
    cargo build -r --target=$TARGET
done

# Cleanup
cp ../../target/aarch64-apple-darwin/release/libxxim_sdk.dylib ../../packages/xxim_sdk/
