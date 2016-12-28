# Git

## Description

Git is a powerful distributed [Version Control System (VCS)][wiki-version-control].
It is used to collaborate on projects by sharing files and handling changes.

## Installation

[Follow the instructions from git's website](https://git-scm.com/)

### Windows (`v2.7.0`)

During the installation, you will have the possibility to choose some options.
Here are the recommended options:

#### Components

- Uncheck **Explorer integration**`
- Check **Associate .git\* configurations file with the default editor**
- Check **Associate .sh files to be run with Bash**

The explorer integration adds two entries to every contextual menu (right click) of the Windows explorer.
They are not that useful to me so I prefer to uncheck it.
 
#### Adjusting the PATH environment

`Use Git from the Windows Command Prompt.`

#### Line endings conversion

Previously, I prefered to use the default value on Windows (Checkout Windows-style, commit Unix-style line-endings),
but in the end I came to the conclusion that we should simply stop using the Windows-style completly.

- Windows has no issue with Linux-style line endings. If one of your tools has an issue, change your tool or submit an issue.

- They do not work well with a Windows/Linux dual boot. If you checkout Windows-style with Windows and then reboot with
  Linux, your files won't change and you'll have Windows-style line endings on Linux which is odd.

- They add complexity. There should be only one way of doing a newline. When performing hashes or diffs, requiring byte-perfect
  similarity, it's best to choose a single option. Changing the newline style also messes with `git` itself.
  It detects that the file changed but the contents are identical to him so it requires an extra commit
  to normalize line endings.

<!-- Example: gulp-typescript, it compiles some files and then does a diff -->


### Configuration

See [Configuration](./configuration.md)

### Check installation

The following command should succeed and print your version of git.

```shell
git --version`
```


[wiki-version-control]: https://en.wikipedia.org/wiki/Version_control
