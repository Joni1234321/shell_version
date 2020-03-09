# Close branch and merge with develop 
git checkout develop
git merge --no-ff $1
git branch -d $1
git push -u origin develop
