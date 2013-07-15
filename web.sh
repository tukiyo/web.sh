#!/bin/sh
TMPFILE=${HOME}/tmp.html

echo '<html><head><meta http-equiv="Content-Type" content="text/html;charset=UTF-8"></head><body><pre>' > ${TMPFILE}


if [ "$1" = "-n" ];then
    cat -ns >> ${TMPFILE}
else
    cat -s >> ${TMPFILE}
fi
x-www-browser ${TMPFILE} 1> /dev/null
