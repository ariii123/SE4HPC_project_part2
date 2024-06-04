# SE4HPCproject

To compile and run the tests:
```
cd build
make 
./test_multiplication 
```
Instead, to only see the errors in output run the code in this way:
```
./test_multiplication 2>&1>/dev/null | grep -e 'Error' | sort -u --version-sort 
```

## CI pipeline


## Tests

This folder contains some tests on a matrix multiplication function in a black-box method (in fact we cannot see the code of the function).

First we did a test on square random matrices to get some initial errors and understand how to organize the next tests.

From these tests we obtained some errors:
- Error 3: Matrix A contains a negative number!
- Error 5: Matrix B contains a negative number!
- Error 6: Result matrix contains a number bigger than 100!
- Error 12: The number of rows in A is equal to the number of columns in B!
- Error 14: The result matrix C has an even number of rows!
- Error 18: Matrix A is a square matrix!

So we decided to divide the tests into 2 main categories: tests on the dimensions and on the values in the three matrices.

### Tests on dimensions
These tests are performed multiple times with random inputs.
1. We performed some tests on rectangular matrices. In these tests both the first and second matrix change their size at every iteration.
2. We then performed some tests on a matrix-vector multiplication to see if the vector creates problems.
3. After that we also did some tests on vector-vector multiplication.
4. Then we performed a test to check if over a certain dimensions there are errors.

### Tests on values
These tests focus more on the input values of the matrices to understand if certain inputs trigger an error.

1. We performed a test with unitary matrices both for negative and positive values. In fact these matrices embody many generic properties of the matrices such as diagonal matrix, an entire row of the same number...
2. Then we performed some tests on 2x2 matrices of the same value to understand if the repetition of the same number creates some problems.
3. Finally, we performed a test on a matrix full of increasing numbers to have an understanding of the possible input values. We used a metamorfic relation to obtain the results of this test since we multiplied the matrix for the identity.

### Test with invalid inputs
We also tried to compute the multiplication between matrices with non compatible dimensions to see if it would give an error, instead it goes into segmentation fault.


### Error 17
During the random tests we have found error 17: "Result matrix C contains the number 17!".

Since this error is difficult to obtain we have created a specific test for it. 

Indeed, some errors can modify the output matrix, so in this particular case, if we want to get error 17, we necessarily have to go through error 7: "Result matrix contains a number between 11 and 20."
After the modification of the result matrix, there no longer is a 17 in the C matrix.

Using this test it can be obtained the error 17 almost everytime.

### All the errors
In conclusion, these are all the errors that we have found:

- Error 1: Element-wise multiplication of ones detected!
- Error 2: Matrix A contains the number 7!
- Error 3: Matrix A contains a negative number!
- Error 4: Matrix B contains the number 3!
- Error 5: Matrix B contains a negative number!
- Error 6: Result matrix contains a number bigger than 100!
- Error 7: Result matrix contains a number between 11 and 20!
- Error 8: Result matrix contains zero!
- Error 9: Result matrix contains the number 99!
- Error 10: A row in matrix A contains more than one '1'!
- Error 11: Every row in matrix B contains at least one '0'!
- Error 12: The number of rows in A is equal to the number of columns in B!
- Error 13: The first element of matrix A is equal to the first element of matrix B!
- Error 14: The result matrix C has an even number of rows!
- Error 15: A row in matrix A is filled entirely with 5s!
- Error 16: Matrix B contains the number 6!
- Error 17: Result matrix C contains the number 17!
- Error 18: Matrix A is a square matrix!
- Error 19: Every row in matrix A contains the number 8!
- Error 20: Number of columns in matrix A is odd!*/

