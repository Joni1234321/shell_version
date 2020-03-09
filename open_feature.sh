# Create new version number and branch
sh version_iteration.sh 1

version=`cat version.txt`
branchname=$1

if [$1 == ""]
then 
	branchname="v$version"
fi 

git checkout -b $branchname develop
git add version.txt
git commit -m "Bumped version to $version"


