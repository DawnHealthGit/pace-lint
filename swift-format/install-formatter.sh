#!/bin/sh

# Set the -e flag to stop running the script in case a command returns
# a nonzero exit code.
set -e

echo "Installing swiftformat homebrew package"
brew install swiftformat

echo "Checking for updates to swiftformat homebrew package"
brew upgrade swiftformat
