version=`cat version.txt`
branchtype=$1
branchname=$2

if [[ -z "$branchname" ]]; 
then 
	branchname="$version"
fi 

#Add prefix
branchname="$branchtype-$branchname"

git checkout -b $branchname develop
git add version.txt
git commit -m "Bumped version to $version"
