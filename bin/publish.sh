#! /bin/bash
set -e

git checkout master
git fetch -p
git pull -r

yarn version
git push -tags