# Create new version number and branch
sh version_iteration.sh 3

version=`cat version.txt`
git checkout -b $1 develop
git add version.txt
git commit -m "Bumped version to $version"


