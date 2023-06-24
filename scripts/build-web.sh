#!/bin/bash

# Setup
BUILD_DIR=platform-build
mkdir $BUILD_DIR
cd $BUILD_DIR

# Install build dependencies
rustup toolchain install nightly
rustup +nightly component add rust-src
rustup +nightly target add wasm32-unknown-unknown
# either of these
curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh
dart pub global activate flutter_rust_bridge

flutter_rust_bridge_serve