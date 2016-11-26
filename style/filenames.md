# Filenames

## Case

Prefer lowercase names, separate parts with dashes (`-`).
Use uppercase for conventional files from GNU projects such as `README` or
`LICENSE`.

## Extensions

## Spaces

Prefer to avoid spaces.

Spaces are often used as parameter separators (for example for Shell commands).
When a path contains space and is used in an application that does not escape
it properly, it might lead to errors.

For example, the Ruby interpreter needs to be installed in a path without
spaces or won't work. Its package manager (_gem_) will generate invalid
files when adding commands for gems having a command line interfaces.
[**2016-05-20**]

[GNU Standards]: https://www.gnu.org/prep/standards/standards.html#Releases
