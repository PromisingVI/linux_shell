#! /bin/bash -

read -p "please enter your name: " username
read -p "please enter your email: " email
read -p "are you sure to continue? [y/n]" comfirm

case $comfirm in
	[yY]*)
	echo "your name is $username"
	echo "your email is $email"
	;;

	[nN]*)
	exit
	;;

	*)
	echo "input y/n"
	exit
	;;
esac
