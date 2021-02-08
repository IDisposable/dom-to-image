#! /bin/bash
set -e

git checkout master
git fetch -p
git pull -r

lerna version