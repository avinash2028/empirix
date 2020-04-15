#!/bin/bash
now=`date +'%m-%d-%Y_%H:%M:%S'`
if [ ! -d $dir ]
then 
     echo "Dir does not exit"
     exit 1 
else 
    echo "Dir exit"
     mkdir -p $1/$now
     cd $1/$now
     cp /tmp/my-app-1.0-SNAPSHOT.jar  .
fi
