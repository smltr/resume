# Plain Text Resume Formatter

This utility formats plain text resumes with a clean, professional border design, making them more readable and visually appealing.

## Features

- Adds a stylized border around your resume text
- Handles text wrapping with proper indentation
- Supports special formatting:
  - Pattern repetition (using `//` syntax)
  - Bullet points and lists
- Customizable width, padding, and margins
- if 'mobile' is in filename, then caps indentations to 4 spaces

## Usage

### Basic Usage

```bash
python3 format.py input_file.txt output_file.txt
```

### Advanced Options

```bash
python3 format.py input_file.txt output_file.txt --width 80 --padding 3 --margin 1
```

- `--width` or `-w`: Total width of the document including borders (default: 75)
- `--padding` or `-p`: Number of spaces between text and border (default: 2)
- `--margin` or `-m`: Number of spaces outside the border (default: 0)

### Using the Makefile

For convenience, you can use the included Makefile:

```bash
make format
```

This will format `unformatted_resume.txt` to `resume.txt` with a width of 80, padding of 3, and margin of 1.

## Special Formatting Syntax

### Pattern Repetition

Use `//` followed by a character or characters to repeat a pattern:

```
—— Experience //—
```

This renders as: `—— Experience ———————————————` (repeats till end of line)


### Bullet Points

Standard bullet points will have proper indentation:

```
• This is a bullet point with enough text that it will wrap to the next line
  and maintain proper indentation
```

## Example

Input file:
```
YOUR NAME
Full Stack Software Engineer


—— Experience //—

→ Independent Developer //·
  Apr 2023 - Present (2 years)

        Self-funded exploration into agentic AI and personal projects

        • Built custom blog (Elixir, Phoenix, LiveView)
        • Tinkered with personal Lisp dialect
        • Created Counter-Strike server browser (findservers.net)
        • Refined personal LLM workflow for coding and creative work
```

Output: (with a width of 60)
```
 ┌── [resume.txt] ──────────────────────────── [utf-8] ───┐
 │                                                        │
 │   YOUR NAME                                            │
 │   Full Stack Software Engineer                         │
 │                                                        │
 │                                                        │
 │   —— Experience ————————————————————————————————————   │
 │                                                        │
 │   → Independent Developer ··························   │
 │     Apr 2023 - Present (2 years)                       │
 │                                                        │
 │           Self-funded exploration into agentic AI      │
 │           and personal projects                        │
 │                                                        │
 │           • Built custom blog (Elixir, Phoenix,        │
 │             LiveView)                                  │
 │           • Tinkered with personal Lisp dialect        │
 │           • Created Counter-Strike server browser      │
 │             (findservers.net)                          │
 │           • Refined personal LLM workflow for coding   │
 │             and creative work                          │
 │                                                        │
 └────────────────────────────────────────────────────────┘

```
