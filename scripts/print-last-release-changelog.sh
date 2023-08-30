#!/bin/bash
set -eu

# print Changelog body of the last released version
awk '/^## [0-9]/ { if (p) { exit }; p=1; next } p' CHANGELOG.md
