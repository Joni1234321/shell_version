# Close branch and merge with develop 
version=`cat version.txt`

branchmerg=$1
branchname=$2


if [[ -z "$branchname" ]]; 
then 
	branchname=`git rev-parse --abbrev-ref HEAD`
	branchname=${branchname##refs/heads/}
fi

git checkout $branchmerg
git merge --no-ff $branchname
git branch -d $branchname
git tag -a $version -m "$branchmerg version: $version"
git push -u origin $branchmerg


