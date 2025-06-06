#!/bin/bash ### Shebang important

## All data is treated as strings by the shell.
## global vars

#### declare -r SRC="$1" ## to call $SRC, declare is used to make it immutable.
#### CURRENT_TIME="$(date +"%x %r %Z")"
#### TIMESTAMP="Generated $CURRENT_TIME, by ${USER}"
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

## Test command for expressions

: << EOF 
	
	To evaluate true or false
	
	test expression 
	
	or just:
	
	[expression]
	
	There are useful expressions in TLCL Table 27-{1..4}
	
	To match against regex:
	
	[[ expression ]]
EOF

## When dealing with integers

: << EOF
	We use (( expression))
	
	examples: 
	
	
EOF

## Control operators - Important!!

: << EOF

	## command2 is excuted only if command1 is successful
	command1 && command2 
	
	## command2 is excuted only of command1 is unsuccessful
	command1 || command2
EOF

## case statement

: << EOF
	case "${choice}" in
		1) echo "You entered 1"
		2) echo "You entered 2"
		q) echo "You entered q"
		*) echo "wrong choice"
	esac

EOF
## How to read user input with read

: << EOF

	Syntax:
	
	read [-options] [variable...]
	
	where options is one or more of the available options listed later in Table 28-1 and variable
	is the name of one or more variables used to hold the input value. If no variable
	name is supplied, the shell variable REPLY contains the line of data.
	
	Examples:
	
	- Single variable input
	
	echo -n "Enter an int -> "
	read int
	
	- Multi variable input
	
	echo -n "Enter one or more values > "
	read var1 var2 var3 var4 var5

	- 0 variable input stored in REPLY
	
	#!/bin/bash
	# read-single: read multiple values into default variable
	echo -n "Enter one or more values > "
	read
	echo "REPLY = '$REPLY'"
	
	Review read options in table 28-1
	
EOF
## Function syntax
function (){
	return
}


## You can call the functions like this:
### $(generate)
# exit(0)