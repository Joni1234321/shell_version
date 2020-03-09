branchtype=$1

if [[ -z "$branchtype" ]]; 
then 
	branchtype=`git rev-parse --abbrev-ref HEAD`
	branchtype=${branchtype##refs/heads/}
fi

echo $branchtype