# Close branch and merge with develop 

version=`cat version.txt`
echo "$version"
git checkout -b "$version"
git checkout "$version"

