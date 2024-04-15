#! /bin/bash -

vflag=off
filename=""
output=""

function usage()
{
	echo "Usage:"
	echo "	myscripts [-h] [-v] [-f <filename>] [-o <filename>]"
	exit -1
}

while getopts :hvf:o: opt
do
	case "$opt" in
		v)
		vflag=on
		;;

		f)
		filename=$OPTARG
		if [ ! -f $filename ]
		then
			echo "file: $filename not exist..."
			exit
		fi
		;;

		o)
		output=$OPTARG
		if [ ! -d 'dirname $output' ]
		then
			echo "path: $output not exist..."
			exit
		fi
		;;

		h)
		usage
		;;

		:)
		# 如果没有为需要参数的选项指定参数，则提示并退出
		echo "option: -$OPTARG requires args..."
		usage
		exit
		;;

		?)
		echo "invalid option: -$OPTARG"
		usage
		;;
	esac

done