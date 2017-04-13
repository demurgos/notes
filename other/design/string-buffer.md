# String and buffer

- A buffer is a finite sequence of unsigned 8-bit integers (bytes).
- A string is a finite sequence of characters.
- A byte is an integer in the range 0..255
- A character is the abstract type representing letter, or glyph, or part of glyph:
  its just unclear... So we prefer to avoid talking about characters usually.
- For practical reasons, computers manipulate "characters" trough their code number.
  The association between a code and a letter is called a character set (or
  alphabet). Some examples of character sets are: Unicode, US ASCII, Latin-1.
- For practical reasons, a sequence of character codes has to be stored as
  a sequence of bytes. The association between a sequence of character codes
  and a sequence of bytes is called an encoding. Some examples of encodings are
  UTF-8, UTF-32, US ASCII. An important family of encodings is _UTF_. It is
  based on _code-units_. A code unit is the base element for the encoding.
  For example UTF-8 uses 8-bit code units (1 byte) while UTF-16 uses 16-bit,
  code units (2 bytes).

A long time ago, programmers did not distinguish between bytes and
characters. It caused and still causes a lot of pain. Be smart, don't
confuse characters and bytes: there are two levels of abstraction between
characters and bytes.

Some older languages do not support the distinction at the language level
"out of the box" so you have to take care at the application level to properly
distinguish between both types.

## Character set

Nowadays, your primary character set should be Unicode. This standard character set
was conceived in a way to support all the glyphs of the world. Using this character
set ensures that any user in any world can use your program.
Usually, you do not have to declare your character set because it is either the
internal encoding of the language when manipulating characters or it is implied by
the encoding used for Input/Output operations.

## Encoding

As explained above, the role of an encoding is to translate a sequence of characters
to a sequence of bytes for input/output operations such as reading a text file or
sending a generated HTML document.
One encoding supports only one character set, but one character set can be
supported by multiple encodings:

| Character set | Encoding      |
|---------------|---------------|
| Unicode       | UTF-8, UTF-16 |
| US ASCII      | US ASCII      |
| Latin 1       | Latin 1       |

(As you can see, US ASCII and Latin 1 come from a time when there was still a
confusion.)


## Unicode Normalization

**TODO**

## Languages

The acknowledgement of the difference between buffers (bytes) and 
strings was one of the main reasons of the switch from Python 2 to Python 3.

### Complete distinction

- Python 3
- Rust

### Partial distinction

- OCaml
- Python 2
- Java
- Javascript
- Typescript

Java, Javascript and Typescript confuse codepoints with 16-bit code units.

### No distinction

- Brainfuck
- C
- C++

### Unknown

- PHP
- Ruby
- Prolog
- Haxe
