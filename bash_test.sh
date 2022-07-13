#! /bin/bash

# este archivo limpia el file  MOCK_DATA.csv
echo "este archivo lo creo $USER \n"
tail -n+2 MOCK_DATA.csv | awk -F, '{print "\"" $3 "\",",  "\"" $4 "\",", "\""$5"\""}' | sort -k 1 -n | sed 's/ //g' > sort.txt
echo "listo"
