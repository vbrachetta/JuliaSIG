# Julia docstring conventions

Julia docstrings:

- Are written in Markdown
- Are placed *immediately before* the function / type they document
- Begin with a one-line summary using the function signature
- Then optionally include:
  - A short description
  - Arguments section (if needed)
  - Examples using `julia>` REPL style
  - Notes about performance or edge cases

Docstrings appear when you type `?function_name` in the Julia REPL.
