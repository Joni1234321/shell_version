version=`cat version.txt`
branchtype=$1
branchcopy=$2
branchname=$3

if [[ -z "$branchname" ]]; 
then 
	branchname="$version"
fi 

#Add prefix
branchname="$branchtype-$branchname"

git checkout -b $branchname $branchcopy
git add version.txt
git commit -m "Bumped version to $version"
