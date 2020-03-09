index=$1

# Get version
version=`cat version.txt`

# Split String
IFS='.' read -ra my_array <<< "$version"

# Perform version iteration
index_value=${my_array[index]}
inc=$((index_value + 1))
my_array[index]=$inc

# Reset all lower numbers
for i in $(seq $((index + 1)) 3)
do
	my_array[$i]="0"
done
next_version=${my_array[0]}.${my_array[1]}.${my_array[2]}.${my_array[3]}

# Write to file
echo  $next_version


