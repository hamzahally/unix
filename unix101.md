# Unix 101

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

```while
	command list 1
do
	command list 
done```

this loops while command list 1 succeeds

```while
	((x<10))
do
	echo loop $x; date >data.$x
	((x=x+1))
done```

