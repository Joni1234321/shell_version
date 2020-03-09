# Close branch and merge with develop 
version=`cat version.txt`

branchmerg=$1
branchname=$2


if [[ -z "$branchname" ]]; 
then 
	branchname=`git rev-parse --abbrev-ref HEAD`
	branchname=${branchname##refs/heads/}
fi

# Multiple merges
IFS=';' read -ra my_array <<< "$branchmerg"

# Git
for merge in "${branchmerg[@]}"; do
	git checkout $branchmerg
	git merge --no-ff $branchname
	git tag -a $version -m "$merge version: $version"
	git push -u origin $branchmerg
done 

git branch -d $branchname

branchtype=`git rev-parse --abbrev-ref HEAD`
branchtype=${branchtype##refs/heads/}
