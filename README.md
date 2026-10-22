# bibtex4j

## Status

- Not implemented

## Goal

- [X] **No AI use at all**
- [ ] Parse bibtex into JSON ([see](https://www.bibtex.org/Format/))
- [ ] Have command line arguments
- [ ] Support both files and STDIO and STDOUT for input and output
- [ ] Support for `@preamble`
- [ ] Support for `@comment`
- [ ] Support for `@string`
- [ ] Support for `crossref`
- [ ] Support `@string`'s being referenced before being used (behind `--allow-string-hoisting`, ie:
    ```bibtex
    @article { myArticle,
        title = {The Value of } # secret;
        author = me;
    }

    @string { secret = "Love"; } 
    ``` 

## Non-Goals

- Manage or format bibliographies 
- Support `BibLaTeX` extensions
- Parse authors
