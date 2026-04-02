# Introducing Test, basic assertions and test sets.
using Test

# Basic arithmetic tests
@test 1 + 1 == 2
@test 2 * 3 == 6
@test 10 / 2 == 5

# A failing test (please comment back in to see how Julia reports a failure)
# @test 1 + 1 == 3

# Grouping tests with @testset
@testset "Basic Math Tests" begin
    @test 3 - 1 == 2
    @test 4^2 == 16
    @test sqrt(9) == 3
end

# Approximate equality (important when handling floating point numbers)
@test isapprox(0.1 + 0.2, 0.3; atol=1e-8)
@test 0.1 + 0.2 ≈ 0.3