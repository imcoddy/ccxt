#!/bin/sh

git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"
git add --force build/ccxt.es5.js
git add --force build/ccxt.browser.js
git add --force build/ccxt.php
git add --force ccxt/__init__.py
git commit -a -m "${COMMIT_MESSAGE}" -m "[ci skip]"
git remote remove origin
git remote add origin https://${GITHUB_TOKEN}@github.com/kroitor/ccxt.git
git push origin HEAD:master