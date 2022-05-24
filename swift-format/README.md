# swift-format tools

These tools can be used to install a swift-format pre-commit hook into a Git repository, that will format all changed .swift files.

## Quick-start

This will install and setup the swift-format tool and config

`setup.sh`

Install the pre-commit hook in a repository:

`install-pre-commit-hook.sh path/to/my-repo`

## Trying out swift-format

If you just want to try out swift-format on a single file, use:

`swift-format --configuration ~/swift-format-pace.config -i path/to/myfile.swift`

## Details

Install/update the swift-format tool:

`install-swift-format.sh`

Install/update the swift-format configuration:

`update-configuration.sh`

Install/update pre-commit hook:

`install-pre-commit-hook.sh path/to/my-repo`
