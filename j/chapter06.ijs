NB. CHAPTER: Matrix multiplication (chapter 6)
NB. Code

NB. load package
load 'math/mt'

NB. Code block 6.1
M1 =: randnr_mt_ 4 3
M2 =: randnr_mt_ 3 5
C =: M1 mp_mt_ M2

NB. Code block 6.3
A =: randnr_mt_ 2 2
B =: randnr_mt_ 2 2
C1 =: A mp_mt_ B
C2 =: B mp_mt_ A
C1 -: C2

NB. Code block 6.5
M1 =: randnr_mt_ 4 3
M2 =: randnr_mt_ 4 3
M1 * M2

NB. Code block 6.7
A =: 2 3 $ >: i. 6
, |: A

NB. Code block 6.9
A =: randnr_mt_ 4 3
B =: randnr_mt_ 4 3
]f =: trace_mt_ (|: A) mp_mt_ B

NB. Code block 6.11
A =: rannr_mt_ 4 3
norms_mt_ A


NB. Code challenges
NB. Challenge 1


NB. Challenge 2
D =: diagmat_mt_ >: i.4
A =: randnr_mt_ 4 4
C1 =: D * A
C2 =: D mp_mt_ A
(,. diag C1) ; ,. diag C2

NB. Challenge 3
A =: diagmat_mt_ randu_mt_ 3
C1 =: ((|: A) + A) % 2
C2 =: (|: A) mp_mt_ A
C1 - %: C2

NB. Challenge 4
m =: 5
A =: randnr_mt_ m, m
v =: randnr_mt_ m, 1
LHS =: norms_mt_ A mp_mt_ v
RHS =: (norms_mt_ A) * (norms_mt_ v)
RHS - LHS