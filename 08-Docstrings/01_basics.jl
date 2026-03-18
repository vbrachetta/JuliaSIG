# 01_basics.jl
# Simple example of a Julia function with basic docstrings.
"""
    square(x)

Return the square of `x`.

# Arguments
- `x`: A number.

# Examples
```jldoctest
julia> square(3)
9

julia> square(2.5)
6.25```
"""
square(x) = x^2
