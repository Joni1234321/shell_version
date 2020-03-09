if [[ -z "$branchtype" ]]; then 
	branchtype=`git rev-parse --abbrev-ref HEAD`
	branchtype=${branchtype##refs/heads/}
	IFS='-' read -ra my_array <<< "$branchtype"
	branchtype=${my_array[0]}
fi

if [["$branchtype" == "feature"]]; then 
	sh "close_feature.sh" $1
elif [["$branchtype" == "patch"]]; then 
	sh "close_patch.sh" $1
elif [["$branchtype" == "hotfix"]]; then 
	sh "close_hotfix.sh" $1
fi