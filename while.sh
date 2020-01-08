#!/bin/bash

test_file=/etc/passwd
test_file1=test.tx
while IFS=':' read username t1 t2 t3 t4 t5 sh_type; do
    printf "%20s: %s\n" $username $sh_type
done < $test_file

echo "================================================="

cat $test_file | while IFS=':' read username t1 t2 t3 t4 t5 sh_type; do
    printf "%20s: %s\n" $username $sh_type
done

i=0
if [ ! -f $test_file1 ]; then
        touch $test_file1
fi
while [ $i -lt 5 ]; do
    echo "$i"
    let i++
done >> $test_file1 

echo "test result:"
cat $test_file1
rm $test_file1
