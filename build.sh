#!/usr/bin/env sh
# https://github.com/djsoftware1/keep-going
#
# Created 6 Jan 2026 by David Joffe

set -eu

# Simple build helper
# Requires: cmake, a C++17 compiler

BUILD_DIR=${BUILD_DIR:-build}
BUILD_TYPE=${BUILD_TYPE:-Relesase}

echo "==> Building keep-going"
echo "    build dir : $BUILD_DIR"
echo "    build type: $BUILD_TYPE"

cmake -S . -B "$BUILD_DIR" -DCMAKE_BUILD_TYPE="$BUILD_TYPE"
cmake --build "$BUILD_DIR"

# after building you may want to do this to install in your local bin folder:
#install -Dm755 build/keep-going ~/.local/bin/
