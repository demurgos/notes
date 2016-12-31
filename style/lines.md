# Lines

- Line endings
- Trailing whitespaces
- Final line
- Line length

## Line endings

Use Unix line-endings everywhere: LF, `\n`, newline, Line Feed, ...

Using different sorts of line endings can lead to hard to find issues. Since every operating
system is able to handle simple `LF` line endings, choosing it as the only line ending can help
us avoid the issues. Finally, not constraining the type of line endings simply adds complexity
when doing diffs or computing hashes. [Coding Horror article][coding-horror-newline].

Examples of issue:
- [Git conflicts][git-merge-line-endings] (make sure to [configure
  Git](../tools/development/git/index.md))
- Running commands from copied files from one system to an other can fail due to carriage returns
  "erasing" the beginning of the line. (Also shared folders for Virtual Machines or Dual Booting)
- The tests of `gulp-tslint` do not pass on Windows: the diff see different line endings.

### Editorconfig

You can set the line endings with the [`end_of_line`][editorconfig-line-endings] property.

```editorconfig
end_of_line = lf
```

### Jetbrains

- New files:
  **File | Settings | Editor | Code Style | Line separator (for new files)**

- Current file:
  **File | Line Separators | LF - Unix and OS X (\n)**

## Trailing whitespaces

Avoid any trailing whitespace at the end of the line.

As with line endings, this can lead to hard-to-spot bugs and conflicts when sharing code and
performing diffs.

### Editorconfig

You can remove the trailing whitespaces with the
[`trim_trailing_whitespace`][editorconfig-trailing-whitespaces] property.

```editorconfig
trim_trailing_whitespace = true
```

### Jetbrains

**File | Settings | Editor | General | Other | Strip trailing spaces on Save**

## Final line

Add a single empty line at the end of the file.

[See the explanation][why-final-line].

### Editorconfig

You can enable the final newline with the [`insert_final_newline`][editorconfig-final-line]
property.

```editorconfig
insert_final_newline = true
```

### Jetbrains

**File | Settings | Editor | General | Other | Ensure line feed at file end on Save**

## Line length

Try to keep the length of the line under 100 characters.

[For historical reasons][why-80-chars], the line length is usually limited to 80 characters.
With today's larger screen we can increase a bit, up to 100 characters, to have more space for
longer names. On larger screens, this size still allows to do side-by-side comparisons.

### Editorconfig

You can set the maximum line length with the [`max_line_length`][editorconfig-max-line-length]
property.

This property is not supported by all editors.

```editorconfig
max_line_length = 100
```

### Jetbrains

**File | Settings | Editor | Code Style | Default Options | Right margin (columns)**


[coding-horror-newline]: https://blog.codinghorror.com/the-great-newline-schism/
[editorconfig-final-line]: https://github.com/editorconfig/editorconfig/wiki/EditorConfig-Properties#insert_final_newline
[editorconfig-line-endings]: https://github.com/editorconfig/editorconfig/wiki/EditorConfig-Properties#end_of_line
[editorconfig-max-line-length]: https://github.com/editorconfig/editorconfig/wiki/EditorConfig-Properties#max_line_length
[editorconfig-trailing-whitespaces]: https://github.com/editorconfig/editorconfig/wiki/EditorConfig-Properties#trim_trailing_whitespace
[why-80-chars]: https://softwareengineering.stackexchange.com/questions/148677/why-is-80-characters-the-standard-limit-for-code-width
[why-final-line]: https://stackoverflow.com/questions/729692/why-should-text-files-end-with-a-newline
[git-merge-line-endings]: https://stackoverflow.com/questions/861995/is-it-possible-for-git-merge-to-ignore-line-ending-differences
