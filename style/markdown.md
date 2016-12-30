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

**TODO**: Check how to set the alignment
