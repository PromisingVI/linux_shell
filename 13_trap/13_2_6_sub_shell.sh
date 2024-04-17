#! /bin/bash -

echo "We are outside the subshell"
echo "Subshell level OUTSIDE subshell: $BASH_SUBSHELL"
echo; echo

outer_var=Outer
global_val=

(
	echo "We are inside the subshell"
	echo "Subshell level OUTSIDE subshell: $BASH_SUBSHELL"
	inner_val=Inner

	echo "From inside subshell, \"inner_val\" = $inner_val"
	echo "From inside subshell, \"outer_var\" = $outer_var"
	global_val="$inner_val"
	export global_val
)

echo; echo
echo "We are outside the subshell"
echo "Subshell level OUTSIDE subshell: $BASH_SUBSHELL"
echo

if [ -z "$inner_val" ]
then
	echo "inner_val is undefined in main body"
else
	echo "inner_val is defined in main body"
fi

echo "From main body,\"inner_val\"= $inner_val"
echo "global_val= $global_val"
echo