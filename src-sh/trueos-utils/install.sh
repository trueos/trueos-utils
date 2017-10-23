#!/bin/sh

DEFAULT="/usr/local"

if [ -z "$1" ] ; then 
	LB="${DEFAULT}" 
else
	LB="${1}" 
fi

if [ "$LB" = "DOMAKE" ] ; then
  INSTARGET=""
elif [ "$LB" = "DOCLEAN" ] ; then
  INSTARGET="clean"
else
  INSTARGET="install"
fi

DIR=`dirname $0`
DIR=`realpath $DIR`
cd ${DIR}

SUBPROJ="about pc-firstgui pc-installdialog \
	 pc-su pc-systemflag"

# Add all the sub-projects
for i in ${SUBPROJ}
do
  cd $i
  if [ $? -ne 0 ] ; then exit 1 ; fi
  make ${INSTARGET}
  if [ $? -ne 0 ] ; then exit 1 ; fi
  cd ${DIR}  
  if [ $? -ne 0 ] ; then exit 1 ; fi
done
