# CewForLisp
Unit testing for lisp modules using the cew test-case system

## usage:
~~~
% make bats -C Modules/Verification/Lifo 
make: Entering directory '/home/student/guenthdd/github/CewForLisp/Modules/Verification/Lifo'
gcl -f tb.cl
Test Case ERROR (Ncase) in script at line number 14
Actual Value is 0
Expected Value is 1

**********Summary***********
Total number of test cases = 2
Total number of test cases in error = 1
make: Leaving directory '/home/student/guenthdd/github/CewForLisp/Modules/Verification/Lifo'

~~~
- as you can tell from the test that there was an issue with the code or the test somewhere, but cew was smart enough to tell me what's up.
