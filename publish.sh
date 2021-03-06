# Uploads developer branch to the master branch


# Merge develop with master
git checkout master || exit 1
git merge --no-ff develop


# Commit and tag version
version=`cat version.txt`

git add version.txt
git commit -m "Bumped version to $version"
git tag -a $version -m "$merge version: $version"

# Load develop
git checkout develop || exit 1
git merge --no-ff master



# Publish
git push -u origin master
git push -u origin develop