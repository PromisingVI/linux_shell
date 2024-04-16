#! /bin/bash -

LOGFILE=/tmp/logfile.txt

#复制描述符6到stdout
exec 6>&1

# 重定向stdout到LOGFILE
exec > $LOGFILE

echo -n "log file:"
date
echo "-----------------------------------------"
echo

echo "output of \"uname -a\" command"
echo

uname -a
echo; echo

echo "output of \"df\" command"
echo
df

exec 1>&6 6>&-

echo
echo "redirect to default"
echo

uname -a
echo

exit 0