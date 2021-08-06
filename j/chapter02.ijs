NB. CHAPTER: Vectors (chapter 2)

NB. Code

NB. load packages
load 'plot'
load 'stats/base/random'

NB. Section 2.1
NB. Code block 2.1
aScalar =: 4


NB. Section 2.2
NB. code block 2.3
'aspect 1; xrange _3 3; yrange _3 3' plot 0 2; 0 _1

NB. Code block 2.5
NB. list, vector
v1 =: 2 4 5 7
NB. row array
v2 =: 1 4 $ 2 4 5 7
NB. col array
v3 =: 4 1 $ 2 4 5 7

NB. Section 2.3
NB. Code block 2.7
NB. row vector
v1 =: 2 4 5 7
NB. change vector to col array
v2 =: ,. v1
NB. row array
v3 =: 1 4 $ 2 4 5 7
NB. col array
v4 =: |: v3

NB. Section 2.5
NB. Code block 2.9
v1 =: 2 5 4 7
v2 =: 4 1 0 2

v3 =: (4*v1) - 2*v2


NB. Code challenges

NB. Challenge 1
v =: 1 2
r =: normalrand 10
v =: v , v *"1 0 r
'aspect 1; xrange _4 4; yrange _4 4' plot ;/ 0 ,"0 |: v
