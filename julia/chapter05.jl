# CHAPTER: Matrices (chapter 5)
# Code

# Load package
using LinearAlgebra

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


# Code challenges