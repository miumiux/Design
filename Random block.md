Design
======
Function:block
Description
For "randomly permuted blocks" allowing different block sizes. # Output: The assignment table of subjects , treatments and blocks
Arguments
num: number of subject intended to permute
blck_size: a vector of numbers indicate possible block size
treat: a list of treatment names(preferred character)
Output
The assignment table of subjects , treatments and blocks
Note: if length of treatment is not a factor of length of observations, an error will return.

TEST
#####################################
>block(24,c(1:3),c("placebo","drug1","drug2"))

placebo drug1 drug2 block
1       2     1     3     1
2       4     8    10     2
3      11     5     9     2
4       7    12     6     2
5      16    17    20     3
6      13    15    14     3
7      19    18    21     3
8      24    23    22     4
