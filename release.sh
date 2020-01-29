#/!bin/bash
MY_REPO=$(git rev-parse --abbrev-ref HEAD)
git checkout dev
git pull origin dev
git merge $MY_REPO
git push origin dev
git checkout master
git merge dev
git push origin mater
git checkout release
git merge master
git push origin release
git checkout $MY_REPO


