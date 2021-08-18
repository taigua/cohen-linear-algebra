NB. CHAPTER: Matrix rank (chapter 7)
NB. Code

NB. load package
load 'math/mt'
load 'math/misc/odeint'
load 'math/misc/svd'

NB. define rank (there is no rank in J, get rank using svd)
rank =: 3 : 0
  s =. > 1 { svd y
  tol =. (>./ s) * (>./ $ y) * (9!:18 '')
  +/ s > tol
)

NB. Code block 7.1
A =: randnr_mt_ 3 6
]r =: rank A


NB. Code challenges
