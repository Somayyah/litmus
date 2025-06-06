#!/bin/bash

## global vars
declare -r SRC="$1" ## to call $SRC, declare is used to make it immutable.
CURRENT_TIME="$(date +"%x %r %Z")"
TIMESTAMP="Generated $CURRENT_TIME, by ${USER}"

## All data is treated as strings by the shell.

#### a=z to Assign the string "z" to variable a.
#### b="a string" to Embedded spaces must be within quotes.
#### c="a string and $b" to Other expansions such as variables can be expanded into the assignment.
#### d="$(ls -l foo.txt)" to Results of a command.
#### e=$((5 * 7)) to Arithmetic expansion.
#### f="\t\ta string\n" to Escape sequences such as tabs and newlines.
#### declare -i integer=1

## How to write if statements:

: << 'EOF'

Follow this syntax:

```
if commands; then
	commands
[elif commands; then
	commands...]
[else
	commands]
fi
```

Example:

x=5
if [ "$x" -eq 5 ]; then
	echo "x equals 5."
else
	echo "x does not equal 5."
fi

EOF

test(){
	# Run the code and compare it to the test file
	return
}	
generate(){
	# To generate the test file(s)
	return
}
main(){
	local foo=1 ## variable local to main
	# test or generate test file?
	
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

## You can call the functions like this:
### $(generate)
# exit(0)