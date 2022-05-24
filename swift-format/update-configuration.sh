#!/bin/sh

# First check if the repository is up-to-date
git fetch

git remote update

check_result=$(git status -uno)

if echo "$check_result" | grep -i "branch is up to date with 'origin/master'"
then
	echo "Local version is up-to-date"
else
	echo "$check_result"
	echo ""
	echo "Local version is not in sync. Please git pull to fetch the latest config"
	exit 1
fi

# Now copy the config to home directory

echo "Installing pace swift-format config in ~/swift-format-pace.config"

cp -f ./swift-format-pace.config ~/

