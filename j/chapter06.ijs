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


NB. Code challenges