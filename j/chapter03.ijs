NB. CHAPTER: Vector multiplications (chapter 3)
NB. Code

NB. load packages
load 'stats/base/random'

NB. Section 3.1
NB. Code block 3.1
v1 =: 2 5 4 7
v2 =: 4 1 0 2

dp =: +/ v1 * v2


NB. Section 3.5
NB. Code block 3.3
l1 =: 1
l2 =: 2
l3 =: _3
v1 =: 4 5 1
v2 =: _4 0 _4
v3 =: 1 3 2

(l1*v1) + (l2*v2) + (l3*v3)


NB. Section 3.6
NB. Code block 3.5
v1 =: 2 5 4 7
v2 =: 4 1 0 2

op =: v1 *"0 1 v2


NB. Section 3.7
NB. Code block 3.7
v1 =: 2 5 4 7
v2 =: 4 1 0 2

v3 =: v1 * v2


NB. Section 3.9
NB. Code block 3.9
v =: 2 5 4 7
vMag =: %: +/ v * v
v_unit =: v % vMag


NB. Code challenges
NB. Challenge 1
v1 =: 1 2 3 4 5
v2 =: 2 3 4 5 6
v3 =: 3 4 5 6 7
w =: _1 3 _2
result =: +/ w *"0 1 (v1, v2,: v3)


NB. Challenge 2
v =: 7 4 _5 8 3
o =: (#v) $ 1
ave =: (+/ v * o) % #v

NB. Challenge 3
v =: 7 4 _5 8 3
w =: rand01 #v
ave =: (+/ v * w) % #v
