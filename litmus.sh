#!/bin/bash

declare -r SRC="$1"
CURRENT_TIME="$(date +"%x %r %Z")"

test(){
	# Run the code and compare it to the test file
	return
}	
generate(){
	# To generate the test file(s)
	return
}
main(){
	# test
		# Does c and JSON test files exist?
			# Yes : test()
			# No : Inform the user
	# generate
		# Does txt test file exist
			# Yes : generate()
			# No : Inform the user
	return
}

## If no arguments are passed

echo "Welcome, please enter an option:"

echo -e "1 -> Test against a use case file\n2 -> Generate a use case file"

read choice

if [[ "$choice" =~ ^(1|2)$ ]]; then
	echo "You entered ${choice}"
else
	echo "Wrong choice"
	exit 1
fi

exit 0