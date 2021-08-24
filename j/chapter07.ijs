NB. CHAPTER: Matrix rank (chapter 7)
NB. Code

NB. load package
load 'math/mt'
load 'math/lapack'
load 'math/lapack/gesvd'

NB. define rank (there is no rank in J, get rank using svd)
rank =: 3 : 0
  s =. diag > 1 { gesvd_jlapack_ C
  tol =. (>./ s) * (>./ $ y) * (9!:18 '')
  +/ s > tol
)

NB. Code block 7.1
A =: randnr_mt_ 3 6
]r =: rank A

NB. Code block 7.3
s =: ?0
M =: randnr_mt_ 3 5
r1 =: rank M
r2 =: rank s * M
r1, r2

NB. Code block 7.5
rank


NB. Code challenges
NB. Challenge 1
A =: randnr_mt_ 9 2
B =: randnr_mt_ 2 16
C =: A mp_mt_ B
(rank A), (rank B), (rank C)

NB. Challenge 2
Z =: 5 5 $ 0
N =: randnr_mt_ 5 5
ZN =: Z + N * (9!:18 '') * 1e_309
rank Z
rank ZN
norms_mt_ ZN
