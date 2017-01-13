# Case

Rules for acronyms and compound words are inspired by [this MSDN article][msdn-capitalization].

https://msdn.microsoft.com/en-us/library/141e06ef%28v=vs.71%29.aspx

## Styles

### PascalCase

Synonyms: **PascalCase**, UpperCamelCase

The first letter of each word is capitalized.

### camelCase

Synonyms: **camelCase**, lowerCamelCase

Except for the first word, the first letter of each word is capitalized.

### kebab-case

Synonyms: **kebab-case**, spinal-case

Lowercase, words are separated with dashes `-`.

### snake_case

Synonyms: **snake_case**, lower_snake_case

Lowercase, words are separated with underscores `_`.

### SCREAMING_SNAKE_CASE

Synonymes: **SCREAMING_SNAKE_CASE**, UPPER_SNAKE_CASE

Uppercase, words are separated with underscores.

## Abbreviations

> An **abbreviation** [...] is a shortened form of a word or phrase. It consists of a group of
> letters taken from the word or phrase.

In general, prefer to avoid abbreviations for clarity. If you use an abbreviation, treat it as a
single word.

You can use the following wide-spread abbreviations: _ID_, _OK_

Examples:

- **ID** (identifier)

  | Style                | Simple               | First part           | Last part            |
  | -------------------- | -------------------- | -------------------- | -------------------- |
  | camelCase            | `id`                 | `idSet`              | `moduleId`           |
  | PascalCase           | `Id`                 | `IdSet`              | `ModuleId`           |
  | kebab-case           | `id`                 | `id-set`             | `module-id`          |
  | snake_case           | `id`                 | `id_set`             | `module_id`          |
  | SCREAMING_SNAKE_CASE | `ID`                 | `ID_SET`             | `MODULE_ID`          |

- **OK** ([Oll Korrect, Ole Kurreck][wiki-etymology-ok])

  | Style                | Simple               | First part           | Last part            |
  | -------------------- | -------------------- | -------------------- | -------------------- |
  | camelCase            | `ok`                 | `okResult`           | `returnOk`           |
  | PascalCase           | `Ok`                 | `OkResult`           | `ReturnOk`           |
  | kebab-case           | `ok`                 | `ok-result`          | `return-ok`          |
  | snake_case           | `ok`                 | `ok_result`          | `return_ok`          |
  | SCREAMING_SNAKE_CASE | `OK`                 | `OK_RESULT`          | `RETURN_OK`          |

Others: _int_ (integer), _char_ (character), _str_ (string)

## Acronyms

> An **acronym** is a word or name formed as an abbreviation from the initial components in a
> phrase or a word, usually individual letters (as in NATO or laser) and sometimes syllables (as
> in Benelux).

Treat all acronyms as a single word.

Microsoft distinguishes between short and long acronyms. Long acronyms are
treated as a normal word, short acronyms are treated as a single collation
group: all the letters have the same capitalization as the first letter.

This special rule for short (2 chacters or less) acronyms can lead to
ambiguities. For example, when writing the compound from `us`, `db` and `io`.
(Input / Output of the DataBase of the United States).

We distinguish short and long acronyms:

- If the acronym has 2 letters (short), capitalize both letters the same way as you would
  capitalize the first letter of a normal word.

  Example with `DB` (Database)

  | Style                | Simple               | First part           | Last part            |
  | -------------------- | -------------------- | -------------------- | -------------------- |
  | camelCase            | `db`                 | `dbConnection`       | `loadDB`             |
  | PascalCase           | `DB`                 | `DBConnection`       | `LoadDB`             |
  | kebab-case           | `db`                 | `db-connection`      | `load-db`            |
  | snake_case           | `db`                 | `db_connection`      | `load_db`            |
  | SCREAMING_SNAKE_CASE | `DB`                 | `DB_CONNECTION`      | `LOAD_DB`            |

- If the acronym has 3 letters or more (long), treat it as a normal word.

  Example with `HTTP` (Hypertext Transfer Protocol)

  | Style                | Simple               | First part           | Last part            |
  | -------------------- | -------------------- | -------------------- | -------------------- |
  | camelCase            | `http`               | `httpRequest`        | `startHttp`          |
  | PascalCase           | `Http`               | `HttpRequest`        | `StartHttp`          |
  | kebab-case           | `http`               | `http-request`       | `start-http`         |
  | snake_case           | `http`               | `http_request`       | `start_http`         |
  | SCREAMING_SNAKE_CASE | `HTTP`               | `HTTP_REQUEST`       | `START_HTTP`         |

### Compound words

[Closed form][wiki-english-compound] compound words should be treated as a single word and
cased accordingly. Use the US english variant when determining closed forms.

- Common terms that _are_ closed forms

  - Callback
  - Email
  - Endpoint
  - Gridline
  - Hashtable
  - Metadata
  - Multipanel
  - Multiview
  - Namespace
  - Placeholder

- Common terms that _are not_ closed forms

  - BitFlag
  - DoNot
  - FileName
  - LogOff
  - LogOn
  - SignIn
  - SignOut
  - UserName
  - WhiteSpace

http://promethee.philo.ulg.ac.be/engdep1/download/defiswitt/doc/compounds.pdf


[msdn-capitalization]: https://msdn.microsoft.com/en-us/library/ms229043(v=vs.110).aspx
[wiki-abbreviation]: https://en.wikipedia.org/wiki/Abbreviation
[wiki-accronym]: https://en.wikipedia.org/wiki/Acronym
[wiki-etymology-ok]: https://en.wikipedia.org/wiki/List_of_proposed_etymologies_of_OK
[wiki-english-compound]: https://en.wikipedia.org/wiki/English_compound#Types_of_compound_nouns
