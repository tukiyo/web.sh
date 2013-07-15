#!/bin/sh
TMPFILE=${HOME}/tmp.txt

if [ "$1" = "-n" ];then
    cat -ns > ${TMPFILE}
else
    cat -s > ${TMPFILE}
fi
x-www-browser ${TMPFILE} 1> /dev/null
sleep 1
rm ${TMPFILE}
