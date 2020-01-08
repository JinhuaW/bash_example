#!/bin/sh

test_file=test.txt

mkfifo $test_file

echo hello > $test_file &
cat $test_file
rm $test_file
