#!/bin/bash
echo "Enter a search target:"
read target
echo "Enter XPath for inserted element:"
read xpath
echo "What is the name of your inserted element?"
read element
echo "What value goes into your new element?"
read value
for f in $( grep -L $target ./*.xml | cut -c 3- ); do
	xmlstarlet ed -L -s $xpath -t elem -n $element -v "$value" $f 
	echo $f "modified"
done
