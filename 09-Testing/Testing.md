# Testing in Julia: Best Practices

## Key Points

Julia includes a built-in testing framework via the `Test` standard library.  
You do not need external dependencies to get started.

Good tests are:

+ Simple: easy for you (and future collaborators) to understand.
+ Focused: each test checks **one** behaviour or idea.
+ Fast: quick to run, so they fit naturally into your workflow.
+ Explicit about failure: when something breaks, the reason is clear.

In academic research, where code underpins results, changes over time, and is sometimes revisited months or years later, tests provide an important safety net. They support reproducibility, help prevent subtle errors when refining methods, and make it easier for collaborators or reviewers to trust and build on your work. Even a small, well‑designed test suite can make your research code more robust, maintainable, and credible.


---

## 1. Use `@testset` to organise tests

Group related tests together:

```julia
@testset "My Feature" begin
    @test f(1) == 2
end
```

Benefits:

+ Clear structure
+ Better output when tests fail


## 2. Test behaviour, not implementation

Focus on what your code does, not how it does it.

Good:

```julia
@test sort([3,1,2]) == [1,2,3]
```

Avoid:

+ Testing internal variables
+ Over-specifying implementation details


## 3. Always include edge cases

Examples:

+ Empty inputs
+ Zero values
+ Negative numbers
+ Large inputs


## 4. Test errors explicitly

Use @test_throws:

```julia
@test_throws ArgumentError my_function(-1)
```

This ensures your code fails correctly.

## 5. Use isapprox for floating point

Never rely on exact equality:

```julia
@test isapprox(0.1 + 0.2, 0.3; atol=1e-8)
```

## 6. Keep tests fast and deterministic

+ Avoid randomness unless controlled (Random.seed!)
+ Avoid external dependencies (APIs, files) unless necessary


## 7. One concept per testset

Avoid overly large test blocks. 

## 8. Mirror your source structure

If your code is:

```
src/
  model.jl
  utils.jl
```

Your tests should roughly follow:

```
test/
  model_tests.jl
  utils_tests.jl
```

## 9. Run tests via Pkg

In a package:

```julia
] test
```
Or manually:

```julia
include("test/runtests.jl")
```

## 10. Keep tests readable

Readable tests act as a form of documentation, both for your future self and for anyone else using or contributing to your code. Write tests so that their purpose is immediately clear. This makes it easier to understand why something is being tested and simplifies updating the tests later when your code changes.
