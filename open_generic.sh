branchtype_number=$1
branchcopy=$2 
branchname=$3

version=`sh get_nextversion.sh $branchtype_number`

# Branchtype
branchtype=$(sh get_branchtype.sh $branchtype_number)
# Branchname
if [[ -z "$branchname" ]]; 
then 
	branchname="$version"
fi 

# Add prefix
branchname="$branchtype-$branchname"

# Git 
#exit if checkout failed when cant copy
git checkout -b $branchname $branchcopy || exit 1

# Update version
sh version_iteration.sh $branchtype_number
git add version.txt
git commit -m "Bumped version to $version"
