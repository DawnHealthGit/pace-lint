#!/bin/sh

# Set the -e flag to stop running the script in case a command returns
# a nonzero exit code.
set -e

usage="You must specify the path of a git workspace"


if [ "$#" -ne 1 ]; then
  echo "Usage: $0 DIRECTORY" >&2
  echo "$usage"
  exit 1
fi
if ! [ -e "$1" ]; then
  echo "$1 not found" >&2
  echo "$usage"
  exit 1
fi
if ! [ -d "$1" ]; then
  echo "$1 not a directory" >&2
  echo "$usage"
  exit 1
fi
if ! [ -d "$1/.git" ]; then
  echo "$1 is not a git directory" >&2
  echo "$usage"
  exit 1
fi

echo "Making sure npm is installed"
brew install node
echo "Making sure git-format-staged is installed"
npm install --global git-format-staged

echo "Installing/updating pre-commit hook into $1/.git/hooks/pre-commit"

mkdir -p -- "$1/.git/hooks"
cp -f ./pre-commit "$1/.git/hooks/pre-commit"

echo "Pre-commit hook installed"
