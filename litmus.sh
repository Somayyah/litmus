#!/bin/bash

declare -r SRC="$1"
CURRENT_TIME="$(date +"%x %r %Z")"

do_1(){
	echo "Here we test the c file"
	return
}	
do_2(){
	echo "Here we generate the test file"
	return
}

do_q(){
	echo "Exiting.."
	exit 0
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

echo -e "1 -> Test against a use case file\n2 -> Generate a use case file\nq -> Quit"

read choice

case "${choice}" in
	1) do_1 ;;
	2) do_2 ;;
	Q|q) do_q ;;
	*) echo "wrong choice" ;;
esac

exit 0