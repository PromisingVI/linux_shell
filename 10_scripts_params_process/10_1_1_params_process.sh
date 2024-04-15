#! /bin/bash -

case $1 in
    sql)
        echo "Running mysql backup by sqldump..."
        ;;
    sync)
       echo "Running mysql backup by sync..."
        ;;
    snap)
       echo "Running mysql backup by snap..."
        ;;
    *)
        echo "Backup utility"
        ;;
esac
