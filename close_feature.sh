# Close branch and merge with develop 
version=`cat version.txt`

branchname=$1
if [$1 == ""]
then 
	branchname=`git rev-parse --abbrev-ref HEAD`
	branchname=${branchname##refs/heads/}
fi

git checkout develop
git merge --no-ff $branchname
git branch -d $branchname
git tag -a $version -m "Develop Version: $version"
git push -u origin develop


