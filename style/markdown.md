# Markdown

Markdown is a flexible markup language, but I prefer to use it consistently.
Here are some of the styles I try to keep.

## Code

- Use only _annotated fenced blocks_ for code samples.
- Use three backticks for the fences.
- Use the full name of the language. If there is no language, use `text`.

Example:

<!-- I use a block fenced with 4 backticks to escape the inner block. -->
````markdown
```markdown
This is a _code snippet_ in **markdown**.
```
````

### Shell

When writing shell code, always add a comment describing the required privileges

- Requires root priviliges

  ```shell
  # Run as root
  apt-get update
  ```
- Does not require root priviliges

  ```shell
  # Run as a normal user
  ls ~
  ```

## Lists

- Use dashes for bullet
- Indent with 2 spaces

```markdown
- one
- two
- three
```

## Tables

**Source**

```markdown
| Header A         | Header B         |
| ---------------- | ---------------- |
| Data 1           | Data 2           |
| Data 3           | Data 4           |
```

**Output**:

| Header A         | Header B         |
| ---------------- | ---------------- |
| Data 1           | Data 2           |
| Data 3           | Data 4           |

Use the colon `:` to set the alignment:

**Source**

```markdown
| Left             | Center           | Right            |
|:---------------- |:----------------:| ----------------:|
| Data 1           | Data 2           | Data 3           |
| Data 4           | Data 5           | Data 6           |
```

**Output**:

| Left             | Center           | Right            |
|:---------------- |:----------------:| ----------------:|
| Data 1           | Data 2           | Data 3           |
| Data 4           | Data 5           | Data 6           |


Escape the pipe character `|` in a table cell: `&#124;`. Escape a code span with the pipe character
`|` in a table cell: `<code>&#124;</code>`.


Example:

| Simple        | Code                |
|---------------|---------------------|
| &#124;        | <code>&#124;</code> |
