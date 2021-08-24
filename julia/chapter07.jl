# CHAPTER: Matrix rank (chapter 7)
# Code

# load package
using LinearAlgebra
using CodeTracking


# Code block 7.1
A = randn(3, 6)
r = rank(A)

# Code block 7.3
s = randn()
M = randn(3, 5)
r1 = rank(M)
r2 = rand(s*M)
print((r1, r2))

# Code block 7.5
print(@code_string rank(M))


# Code challenges
# Challenge 1
A = randn(9, 2)
B = randn(2, 16)
C = A * B
print((rank(A), rank(B), rank(C)))

# Challenge 1
Z = zeros(5, 5)
N = randn(5, 5)
ZN = Z + N * eps(Float64) * 1e-307
rank(Z)  # r=0
rank(ZN)  # r=5
norm(ZN)