#!/bin/sh

# copy the folder .git to use the git setting
cd _book
cp -r ../.git ./

# force to update the gitbook
git checkout gh-pages
git add .
git commit -m "website created at $(date)"
git push origin gh-pages --force
