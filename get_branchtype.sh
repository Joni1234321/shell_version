
branchtype=$1

if [[ "$branchtype" == "1" ]]; then 
	echo "feature"
elif [[ "$branchtype" == "2" ]]; then 
	echo "patch"
elif [[ "$branchtype" == "3" ]]; then 
	echo "hotfix"
else 
# On error
	echo ""
fi