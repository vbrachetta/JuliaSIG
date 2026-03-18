# 02_mutation.jl
# Demonstrates the difference between non-mutating and mutating functions (!).
"""
    double(v)

Return a new vector whose elements are twice those of `v`.
"""
double(v::AbstractVector) = v .* 2


"""
    double!(v)

Double each element of vector `v` in-place (modifies the input).
"""
function double!(v::AbstractVector)
    v .*= 2
    return v
end
