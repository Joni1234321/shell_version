# Create new version number and branch
sh version_iteration.sh 1
git checkout -b $1 develop
