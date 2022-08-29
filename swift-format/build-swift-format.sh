#!/bin/sh

# Set the -e flag to stop running the script in case a command returns
# a nonzero exit code.
set -e

#
# This script might not actually be useful, but in case we want to manually
# compile swift-format at some point, instead of using Homebrew, it might
# come in handy \-(o_o)-/
#
# It will try to download and build the version specified, and install it in /usr/local/bin
#

VERSION=0.50600.1  # replace this with the version you need
git clone https://github.com/apple/swift-format.git
cd swift-format
git checkout "tags/$VERSION"
swift build -c release

echo ""
echo "swift-format built successfully"
echo ""
echo "Installing swift-format in /usr/local/bin"
cp -f -v .build/release/swift-format /usr/local/bin
echo "Done"