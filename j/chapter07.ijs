NB. CHAPTER: Matrix rank (chapter 7)
NB. Code

NB. load package
load 'math/mt'
load 'math/misc/odeint'
load 'math/misc/svd'

NB. define rank (there is no rank in J, get rank using svd)
rank =: 3 : 0
  s =. ((0&{) @: +.)"0 (> 1 { svd y)
  tol =. >./ 0.0, ((0 { s) * (>./ $ y) * (9!:18 ''))
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
