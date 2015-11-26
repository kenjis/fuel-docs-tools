#!/bin/sh

cd `dirname $0`

cd fuel-docs
git checkout 1.8/develop >/dev/null 2>/dev/null
git fetch origin
git merge origin/1.8/develop >/dev/null 2>/dev/null
cd ..

cd fuel-docs-nekoget
git checkout 1.8/develop_japanese >/dev/null 2>/dev/null
git fetch origin
git merge origin/1.8/develop_japanese >/dev/null 2>/dev/null
cd ..

php check.php d
