#!/bin/bash
echo "Enter a target element: "
read target
echo "Enter XPath for inserted element: "
read xpath
for f in $( grep -L digitalOrigin ./*.xml | cut -c 3- ); do
	xmlstarlet ed -L -s //_:physicalDescription -t elem -n digitalOrigin -v "digitized other analog" $f 
	echo $f "modified"
done
