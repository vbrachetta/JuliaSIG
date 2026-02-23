# Julia Docstring Conventions

This document briefly summarises core Julia docstring conventions and links to the official documentation.


## What Are Docstrings?

A docstring in Julia is a block of Markdown documentation placed **immediately before** the function, type, module, or object it documents. You can view a docstring in the REPL by typing:

```
?function_name
```

## Why Docstrings Matter

Docstrings make your code easier to understand and use, both for other people and for your future self. Ideally, they provide clear examples that reduce confusion and mistakes. Even simple functions benefit from a short explanation of what they do.

## Conventions

Julia docstrings:

- Are written in **Markdown**
- Are placed *immediately before* the function or object
- Begin with a **function signature** on the first line
- Typically contain:
  - A short description
  - Optional sections such as:
    - **Arguments**
    - **Examples** (with `julia>` prompts)
    - **Notes**, performance details, or edge cases


## Official Documentation

For the complete reference, see the Julia documentation:

- https://docs.julialang.org/en/v1/manual/documentation/

