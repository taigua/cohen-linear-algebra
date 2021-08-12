# CHAPTER: Matrices (chapter 5)
# Code

# Load package
using LinearAlgebra
using ToeplitzMatrices

# Code block 5.1
A = randn(2, 5)
At1 = A'
At2 = transpose(A)

# Code block 5.3
IM = Matrix(1.0I, 4, 4)
O = ones(4, 4)
Z = zeros(4, 4)

# Code block 5.5
D = diagm([1, 2, 3, 4, 5])  # diagonal matrix
R = randn(3, 4)
d = diag(R)  # diagonal elements

# Code block 5.7
A = randn(3, 5)
B = randn(3, 4)
AB = [A B]

# Code block 5.9
A = randn(5, 5)
L = tril(A)  # extract the lower triangle
U = triu(A)  # extract the upper triangle

# Code block 5.11
t = [1, 2, 3, 4]
T = Toeplitz(t, t)
H = Hankel(t, t[[end, (1:end-1)...]])

# Code challenges