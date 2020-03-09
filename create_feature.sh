# Create new version number and branch
sh version_iteration.sh 1
git checkout -b $1 develop

git checkout develop
git merge --no-ff $1
git branch -d $1
git push -u origin develop
