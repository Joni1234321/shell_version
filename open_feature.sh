# Create new version number and branch
sh version_iteration.sh 1

version=`cat version.txt`
branchname=$1

git checkout -b $branchname develop
git add version.txt
git commit -m "Bumped version to $version"

