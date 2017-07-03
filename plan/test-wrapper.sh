#!/bin/bash
cd test-scripts/

echo "Running Tests Now...."

tests_count=0
passed=0
failed=0

for i in $(ls test-*.sh); do

echo "TEST: $i"
output=$("./"$i)

if [ "$output" == "pass" ]
then 
 echo "STATUS: PASSED"
 ((passed++))
else
 echo "STATUS: FAILED"
 ((failed++))
fi
((tests_count++))
echo ""
done

echo "Total "$tests_count" Tests ran "
echo "No of Tests Passed: "$passed
echo "No of Tests Failed: "$failed  
