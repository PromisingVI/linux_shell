#! /bin/bash -

opt=$1

filename=$2

checkfile()
{
    if [ -z $filename ]
    then
        echo "file name missing"
        exit 1
    elif [ -z $filename ]
    then
        echo "file: $filename not exist"
        exit 2
    fi
}

case $opt in
    -e|-E)
    checkfile
    echo "editing $filename"
    ;;

    -p|-P)
    checkfile
    echo "display $filename"
    ;;

    *)
    echo "Bad args..."
    ;;
esac