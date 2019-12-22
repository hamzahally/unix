# Unix

# Local Variables and Typeset

typeset command makes local variables

```typeset -i x```

x must be an integer

makes calculations faster when variables are defined to be integers

# Declare Command

```declare -l``` 

Upper case converted to lower case

```declare -u```

lower case converted to upper case


```declare -r```

variable is made read only


```declare -a```

MyArray will make MyArray an indexed array


```declare -A```

MyArray2 will make MyArray2 an associative array
# The read command

```read a b```

reads first word into a and the rest into b

good for a while loop

```
while
	command list 1
do
	command list 
done
```

this loops while command list 1 succeeds

```
while
	((x<10))
do
	echo loop $x; date >data.$x
	((x=x+1))
done
```

```
while
	((x<10))
do
	echo loop $x; date >data.$x
	((x=x+1))
done
```

```
while
	read a b
do
	echo a is $a b is $b
done <data_file
```

piping into a while

```
ls -l | while
read a b c d
do
echo owner is $c
done 
```

# For Loops

```
for <variable> in <list>
do 
	command list
done
```

```
for i in dog cat elephant
do
	echo i is $i
done
```

```
seq 1 5
```

prints 1 2 3 4 5

```
for num in <back tick>`seq 1 5` <back tick>
```

loops over 1 2 3 4 5

```
for d in $(<data_file)
```

loops over space/newline

separated data in data_file

```
for j in *.c
```

making a list with file globbing

```
for f in $(find . -name *.c)
```

using a command to generate a list

use

```
| more
```

to be able to scroll/press enter to see the next set of results if they go over the screen

# Bash Functions

To organise code in a shell program

```
function printhello {
	echo hello
}

print hello
```
shell memorises the function like it is a new command

# Return command

```
function myFunc{
echo starting
return
echo this will not be executed
}
```

functions produce results by writing output

```
hvar=$(printhello)
```

# Exit command

exit <VALUE> sets the exit status, represented by $? to <VALUE>

exit terminates the shell process

exit in a function terminates the whole shell program, not just the function

# Redirection and Pipes

0 => stdin,  1 => stdout, 2=>stderr

command

```&> file```

file gets stdout and stderr from command, files is created of overwritten

```
command | command 2
```

command2's stdin comes from command's stdout

```
command 2>&1 | command2
```

gets stdout and stderr from command

```
command |& command 2
```

alternative way for command2 to get command's stdout and stderr as its stdin

```
command >> file
```

appends stdout of command to end of file

```
command &>> file
```

appends stdout and stderr of command to end of file

# Here Documents: <<

Here documents are a way to embed input for standard input inside of a script

They avoid having to create a new file just to hold some input values.

```
sort <<END
cherry
banana
apple
orange
END
```

```
exec N< myfile
```

opens file descriptor N for reading from file myfile

```
exec N> myfile
```

opens file descriptor N for writing to myfile

```
exec N<> myfile
```

opens file descriptor N for reading and writing with myfile

```
exec N>&- or exec N<&-
```

closes file descriptor N

```
lsof
```

see what file descriptors for a process are open

```
exec 7>/tmp/myfile7
lsof -p $$
```

$$ is shell's PID


# The Case Statement

```
case expression in
pattern 1 )
	command list ;;
pattern 2 )
	command list ;;
...
esac
```

# If-Then-Else Statement

```
if 
command list # last result is used
then
command list
[else
command list]
fi
```

# Test Command

```
if 
test -f afile
```

```
if [[ -f bfile ]]
```

```
if
test $x -gt 5
```

## More tests

```
test -d X
```

success if X is a directory

```
test -f X
```

success if X is a regular file

```
test -s X
```

success if X exists and not empty

```
test -x X
```

success if you have x permission on X

```
test -w X
```

success if you have w permission on X

```
test -r X
```

success if you have r permission on X

# Arithmetic Operators

```
n=5
((n++))
if
((n>4 || n == ))
```

```
((n=2**3 + 5))
((y=n^4))
echo y = $y
```
prints 9, why?

# Challenge: Local Vars

- Write a bash script that has a function f
- Creates a local variable A, sets it to 1, and then prints its value
- Sets A=2, calls f, and then prints A after f returns

# Challenge: Loops

- Write a bash script that uses a for loop to loop over all of the 
files in /usr/bin and echo the name of any of them that has inside 
the string "unable to fork"

Hint:
if
	strings $i | grep -q "unable to fork"
	then

# Challenge: Arithmetic

- Write a script that echos a running total of the RSS and SZ columns 
from the command: ps -ly

Hint:
n=1
	ps -ly | while
	read c1 c2 c3 c4 c5 c6 c7 c8 c9 c10
	do
		if((n>1))
		...

