# OCaml Project

How to structure an an OCaml library:

```text
docs/
|- api.odocl
example/
|- example.ml
lib/
|- <foo>.ml
test/
|- <foo>_test.ml
|- test.ml
LICENSE.md
Makefile
README.md
```

## Requirements

- Ocaml 4.0.3
- _ocamlbuild_
- _opam_

## Make target

### `make`

Build the library and generate the API documentation.

### `make check-environment`

Ensure that the requirements are met.

### `make test`

Build and run the tests.

### `make build`

Build the library

### `make doc`

Generate the API documentation.

### `make run-example`

Build and run the example.

### `make publish`

Publish the package to _OPAM_.

### `make gh-pages`

Create a commit on the gh-pages branch.
