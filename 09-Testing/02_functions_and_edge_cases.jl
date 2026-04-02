# Testing user-defined functions, edge cases and error handling.
using Test

# Function to test
function safe_divide(a, b)
    if b == 0
        throw(ArgumentError("Division by zero"))
    end
    return a / b
end

@testset "safe_divide tests" begin
    @test safe_divide(10, 2) == 5
    @test safe_divide(-6, 3) == -2

    # Edge cases
    @test safe_divide(0, 5) == 0

    # Testing errors
    @test_throws ArgumentError safe_divide(10, 0)
end

# Another example: strings
function normalise_name(name::String)
    return lowercase(strip(name))
end

@testset "normalise_name tests" begin
    @test normalise_name(" Hello ") == "hello"
    @test normalise_name("Julia") == "julia"
    @test normalise_name("") == ""
end
