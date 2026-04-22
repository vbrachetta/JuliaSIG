# Mutable containers: arrays (vectors and matrices)
v = [1, 2, 3, 4]
println(v[3])
M = [1 2; 3 4]
println(M[2,1]) # prints the element in the second row, first column in "M".

# ";" is equivalent to changing lines. Therefore, "M_1" is the same matrix as "M".
M_1 = [1 2
    3 4]