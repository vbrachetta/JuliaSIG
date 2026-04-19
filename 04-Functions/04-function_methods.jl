# Multiple methods for the same function
function f(x::Int)
    println("Input type is: Int")
end

function f(x::Float64)
    println("Input type is: Float64")
end

f(1) # integer input
f(1.0) # float integer