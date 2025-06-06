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
	# test or generate test file?
	if [ ! -e "${SRC}" ]; then
		echo "Missing file, are you sure it exists?"
		exit 1
	fi
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

echo "Generated $CURRENT_TIME, by ${USER}"

exit 0