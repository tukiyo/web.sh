#!/bin/sh
TMPFILE=${HOME}/tmp.txt
cat > ${TMPFILE} && \
x-www-browser ${TMPFILE} 1> /dev/null
sleep 1
rm ${TMPFILE}
