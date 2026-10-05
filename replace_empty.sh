#! /usr/bin/bash
# script to replace empty entries in tab-separated data with 'NA'
# and replace spaces with underscores
# assumes your input filename is named temp2, will output revised file to temp3

inputFile=temp2
outputFile=temp3


sed 's/    /\tNA\t/g' $inputFile >& $outputFile
sed -i 's/  $/\tNA/g' $outputFile
sed -i 's/^  /NA\t/g' $outputFile
sed -i 's/ /_/g' $outputFile
