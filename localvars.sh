#!/bin/bash
function f {
	declare -l a="1"
	echo a = $a
}

a="2"

f
echo a is $a
