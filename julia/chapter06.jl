# CHAPTER: Matrix multiplication (chapter 6)
# Code
using LinearAlgebra

# Code block 6.1
M1 = randn(4, 3)
M2 = randn(3, 5)
C = M1 * M2

# Code block 6.3
A = randn(2, 2)
B = randn(2, 2)
C1 = A * B
C2 = B * A
C1 == C2

# Code block 6.5
M1 = randn(4, 3)
M2 = randn(4, 3)
M1 .* M2

# Code block 6.7
A = [1 2 3; 4 5 6]
A[:]

# Code block 6.9
A = randn(4, 3)
B = randn(4, 3)
f = tr(A' * B)

# Code block 6.11
A = randn(4, 3)
norm(A)


# Code challenges
# Challenge 1
A = randn(2, 4)
B = randn(4, 3)
C1 = zeros(2, 3)
for i in 1:4
    C1 += A[:, [i]] * B[[i], :]
end
C1 - A * B  # show equality


# Challenge 2
D = diagm(1:4)
A = randn(4, 4)
C1 = D .* A
C2 = D * A
[diag(C1) diag(C2)]

# Challenge 3
A = diagm(rand(3))
C1 = (A' + A) / 2
C2 = A' * A
C1 - sqrt(C2)

# Challenge 4
m = 5
A = randn(m, m)
v = randn(m)
LHS = norm(A * v)
RHS = norm(A) * norm(v)
RHS - LHS  # should always be positive
