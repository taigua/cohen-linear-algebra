NB. CHAPTER: Matrices (chapter 5)
NB. Code

NB. load packages
load 'math/mt'

NB. Code block 5.1
A =: randnr_mt_ 2 5
At =: |: A


NB. Code block 5.3
I =: e. i. 4
O =: 4 4 $ 1
Z =: 4 4 $ 0

NB. Code block 5.5
D =: diagmat_mt_ 1 2 3 4 5
R =: randnr_mt_ 3 4
d =: diag R

NB. Code block 5.7
A =: randnr_mt_ 3 5
B =: randnr_mt_ 3 4
AB =: A ,. B

NB. Code block 5.9
A =: randnr_mt_ 5 5
L =: trl_mt_ A
U =: tru_mt_ A

NB. Code block 5.11
NB. there is no library to do this in J, I will implement this later

NB. Code block 5.13
l =: 0.01
I =: e. i. 4
A =: randnr_mt_ 4 4
As =: A + l*I

NB. Code block 5.15
A =: randnr_mt_ 4 4
tr =: trace_mt_ A

NB. Code challenges
NB. Challenge 1


NB. Challenge 2
A =: randnr_mt_ 4 4
Al =: trl_mt_ A
S =: Al + |: Al

NB. Challenge 3
