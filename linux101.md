# Local Variables and Typeset

```typeset -i x```

x must be an integer

makes calculations faster when variables are defined to be integers

```declare -l``` 

Upper case converted to lower case

```declare -u```

lower case converted to upper case


```declare -r```

variable is made read only


```declare -a```

MyArray will make MyArray an indexed array


```declare -A```

MyArray2 will make MyArray2 an associative arra
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
do	ls

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
echo owner s $c
done 
```

# For Loops

```
for <var> in <list>
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
