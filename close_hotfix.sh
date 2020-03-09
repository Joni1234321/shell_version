# Close branch and merge with develop 
version=`cat version.txt`

git checkout develop
git merge --no-ff $1
git branch -d $1
git tag -a $version -m "Develop Version: $version"
git push -u origin develop

