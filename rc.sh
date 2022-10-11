#! /bin/sh

#initialize variable
reverse=""

#read in data
name=`grep ">" $1`
sequence=`grep -v ">" $1`

echo "Name: $name"

#calculate length of sequence
len=${#sequence}

echo "Length: $len"

#BW deleted the for loop and subsequent reverse command ro combine into one below.

# new one liner to convert sequence into the reverse complement - started by BW
reverse= `echo $sequence | rev | tr 'atcg' 'tagc'`


#complement sequence
rc=`echo $reverse | tr 'atcg' 'tagc'`

echo "$rc
"

echo $name >$1.rc.txt
echo $rc >>$1.rc.txt
