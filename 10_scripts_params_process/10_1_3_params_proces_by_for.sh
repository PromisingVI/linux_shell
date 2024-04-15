#! /bin/bash -

E_BADARGS=65

if [ ! -n "$1" ]
then
    echo "Usage: $0 arg1 arg2..."
    exit $E_BADARGS
fi

index=1
echo "list args with \$*:"
for arg in $*
do
    echo "Arg #$index = $arg"
    let index+=1
done

echo

index=1
echo "list args with \"\$@\":"
for arg in $@
do
    echo "Arg #$index = $arg"
    let index+=1
done