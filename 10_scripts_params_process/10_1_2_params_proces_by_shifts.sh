#! /bin/bash -

# 命令行参数个数不为0，则进入while循环
while [ $# -ne 0 ]
do
    echo "current param: $1 remaining: $#."
    shift
done