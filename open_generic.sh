version=`cat version.txt`
branchtype=$1
branchcopy=$2 
branchname=$3

if [[ -z "$branchname" ]]; 
then 
	branchname="$version"
fi 

# Add prefix
branchname="$branchtype-$branchname"

# Git 
#exit if checkout failed
git checkout -b $branchname $branchcopy || exit 1

# Update version
git add version.txt
git commit -m "Bumped version to $version"
