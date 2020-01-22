#!/usr/bin/bash



ARCHIVO=$1
awk 'NR%11==0 {print $0}' $ARCHIVO > ${ARCHIVO}_temp
mv ${ARCHIVO}_temp $ARCHIVO
