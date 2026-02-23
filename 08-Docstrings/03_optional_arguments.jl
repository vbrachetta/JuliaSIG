# 03_optional_arguments.jl
# Shows how to document functions with optional and keyword arguments.

"""
    greet(name; punctuation='!')

Return a greeting for `name`.

The greeting always starts with "Hello, " and ends with the customisable punctuation character.

# Arguments
- `name::AbstractString`: The name to greet.
- `punctuation::Char='!'`: A character to end the greeting with (default: `!`).

# Examples
```jldoctest
julia> greet("World")
"Hello, World!"

julia> greet("Julia"; punctuation='?')
"Hello, Julia?"
```
"""
function greet(name; punctuation='!')
    return "Hello, $(name)$(punctuation)"
end
