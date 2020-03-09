# Close branch and merge with develop 
version=`cat version.txt`

git checkout develop
git merge --no-ff $1
git branch -d $1
git tag -a $version -m "Develop Version: $version"
git push -u origin develop



# Create new version number and branch
sh version_iteration.sh 1

version=`cat version.txt`
branchname=$1

if [$1 == ""]
then 
	echo hej
	$branchname=$version
fi 

git checkout -b $branchname develop
git add version.txt
git commit -m "Bumped version to $version"


