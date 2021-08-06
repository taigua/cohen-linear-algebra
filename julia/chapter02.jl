"""
# CHAPTER: Vectors (chapter 2)
# Code
"""

# load packages
using DataFrames
using Gadfly
using Random


# Section 2.1
# Code block 2.1
aScalar = 4


# Section 2.2
# Code block 2.3
v = [2, -1]
plot(x=[0, v[1]], y=[0, v[2]], Geom.line,
     Guide.xticks(ticks=-3:1:3), Guide.yticks(ticks=-3:1:3),
     Guide.xlabel("X₁ dim."), Guide.ylabel("X₂ dim."),
     Coord.cartesian(aspect_ratio=1))


# Code block 2.5
v1 = [2 5 4 7]     # row vector
v2 = [2, 5, 4, 7]  # column vevtor


# Section 2.3
# Code block 2.7
# row vector
v1 =[2 5 4 7]

# column vector
v2 = v1'


# Section 2.5
# Code block 2.9
v1 = [2,5,4,7]
v2 = [4,1,0,2]

# scalar-multiply and add
v3 = 4*v1 - 2*v2


# Code challenges
# Challenge 1
v = [1, 2]
rng = MersenneTwister(1234)
r = randn(rng, 10)

df = DataFrame(x=zeros(length(r) + 1), y=zeros(length(r) + 1),
               xend=[v[1]; r*v[1]], yend=[v[2]; r*v[2]],
               color=1:(length(r) + 1))

plot(df, x=:x, y=:y, xend=:xend, yend=:yend, color=:color,
     Geom.segment(arrow=true), 
     Coord.cartesian(aspect_ratio=1),
     Scale.x_continuous(minvalue=-4, maxvalue=4),
     Scale.y_continuous(minvalue=-4, maxvalue=4))

