# Filenames

## Case

Prefer lowercase names, separate parts with dashes (`-`).
Use uppercase for conventional files from GNU projects such as `README` or
`LICENSE`. This exception also concerns `Makefile`.

_Explanation_: Sharing code between case-sensitive and case-insensitive file systems might lead to issues like
 duplicated files, non-detected renames, file path errors, inconsistencies induced by the VCS, etc. Linux and Mac are case-sensitive
 but Windows has a case-insensitive file system, so we prefer to refrain from using mixed case in file names. The use
 of dashes as logical separators (instead of simple concatenation or underscores) is a convention that leads to readable names,
 it is espacially popular amongst web projects.

## Extensions

Extensions should always be _lowercase_.

## Spaces

Prefer to avoid spaces.

Spaces are often used as parameter separators (for example for Shell commands).
When a path contains space and is used in an application that does not escape
it properly, it might lead to errors.

For example, the Ruby interpreter needs to be installed in a path without
spaces or won't work. Its package manager (_gem_) will generate invalid
files when adding commands for gems having a command line interfaces.
[**2016-05-20**]

## Examples

__DO__: `main.ts`, `_partial.scss`, `hello-world`, `contacts-list.jade`, `some-class.ts`, `README.md`, `CONTRIBUTING.md`, `Makefile`

__DO NOT__: `Main.ts`, `_PARTIAL.SCSS`, `hello_world`, `contactslist.jade`, `SomeClass.ts`, `readme.md, `makefile`


[GNU Standards]: https://www.gnu.org/prep/standards/standards.html#Releases
