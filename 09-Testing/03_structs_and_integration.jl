# Testing strucs, multiple methods and slightly more realistic Workflows.
using Test

# A simple struct
struct BankAccount
    owner::String
    balance::Float64
end

function deposit(account::BankAccount, amount)
    amount < 0 && throw(ArgumentError("Negative deposit"))
    return BankAccount(account.owner, account.balance + amount)
end

function withdraw(account::BankAccount, amount)
    amount < 0 && throw(ArgumentError("Negative withdrawal"))
    amount > account.balance && throw(ArgumentError("Insufficient funds"))
    return BankAccount(account.owner, account.balance - amount)
end

@testset "BankAccount tests" begin
    acc = BankAccount("Alice", 100.0)

    acc2 = deposit(acc, 50.0)
    @test acc2.balance == 150.0

    acc3 = withdraw(acc2, 20.0)
    @test acc3.balance == 130.0

    # Error cases
    @test_throws ArgumentError deposit(acc, -10)
    @test_throws ArgumentError withdraw(acc, -5)
    @test_throws ArgumentError withdraw(acc, 1000)
end

# Integration-style test
@testset "Workflow test" begin
    acc = BankAccount("Bob", 200.0)
    acc = deposit(acc, 100.0)
    acc = withdraw(acc, 50.0)

    @test acc.balance == 250.0
end
