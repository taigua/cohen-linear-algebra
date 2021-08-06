# CHAPTER: Vector multiplications (chapter 3)
# Code

# load packages
using LinearAlgebra

# Section 3.1
# Code block 3.1
v1 = [2, 5, 4, 7]
v2 = [4, 1, 0, 2]

dp = v1 ⋅ v2


# Section 3.5
# Code block 3.3
l1 = 1
l2 = 2
l3 = -3
v1 = [4, 5, 1]
v2 = [-4, 0, -4]
v3 = [1, 3, 2]

l1*v1 + l2*v2 + l3*v3


# Section 3.6
# Code block 3.5
v1 = [2, 5, 4, 7]
v2 = [4, 1, 0, 2]

op = v1 * v2'


# Section 3.7
# Code block 3.7
v1 = [2, 5, 4, 7]
v2 = [4, 1, 0, 2]

v3 = v1 .* v2


# Section 3.9
# Code block 3.9
v = [2, 5, 4, 7]
vMag = norm(v)
v_unit = v / vMag


# Code challenges
# Challenge 1
v1 = [1, 2, 3, 4, 5]
v2 = [2, 3, 4, 5, 6]
v3 = [3, 4, 5, 6, 7]
w = [-1, 3, -2]
result = v1*w[1] + v2*w[2] + v3*w[3]


# Challenge 2
v = [7, 4, -5, 8, 3]
o = ones(length(v))
ave = v ⋅ o / length(v)

# Challenge 3
v = [7, 4, -5, 8, 3]
w = rand(length(v))
ave = v ⋅ w / length(v)
