#!/bin/sh

# create the repository
git init
git add .
git commit -m "create repository"

# connect local repository to remote github repository
git remote add origin https://github.com/whycoding/FinanceIntro
git push origin master

# create the gh-pages branch and update
git checkout --orphan gh-pages
git add .
git commit -m "create website"
git push origin gh-pages
git checkout master