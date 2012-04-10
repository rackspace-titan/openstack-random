#!/bin/bash

if [ -f $1 ]; then
    myfile=$1
else
    echo "You need to enter the file with list of hostnames."
fi

while read line; do    
    echo $line
    ssh -n -f root@$line "cd /home/osran; nohup ./random-testing > run.log "
done < $myfile
