# gtypist single space

This is a copy of the default [GNU Typist](http://www.gnu.org/software/gtypist/) lessons with all the "two spaces at the end of each sentence" and "use l instead of 1" garbage thrown out. An effort has been made to update documentation along with the lesson, as well as to port other languages. Note that I can't read Cyrillic, Spanish or German, so I probably missed things (patches welcome).

### Usage

Just copy these files to your gtypist directory (if you're using Debian and installed the `gtypist` package through `apt-get`, your `.typ`s should be in `/usr/share/gtypist/`), overwriting the old ones. Trust me, it's better this way.

### Contents Notes

The files

- c.typ
- cs.typ
- d.typ
- demo.typ
- esp.typ
- gtypist.typ
- m.typ
- n.typ
- q.typ
- r.typ
- ru.typ
- s.typ
- t.typ
- tdde.typ
- u.typ
- v.typ

have all been edited for spacing. Double spaces are removed everywhere, paragraph indentation has been removed, and documentation regarding the requirement for the above has been removed.

The files **cs.typ**, **gtypist.typ** and **t.typ** contained a set of three lessons wherein the typist is expected to substitute `l` (lowercase L) for `1` (the numeral One). These have been removed entirely.

None of the **k*.typ** files actually contained any of these artefacts, so they were untouched.

The **gtypist.typ** and **r.typ** files have a section with a user-formatted index of items with (manual) connecting dot lines. The columns are also vertically aligned (also manual). This doesn't seem like something humans should even learn anymore, but it doesn't work without extraneous spaces, so they've been left in.

The **tdde.typ** file has sections involving ascii art and documentation boxes. These were left unaltered, even though the rest of the file was converted as stated above. I question the value of teaching humans to indent code by hand, but that section was also left alone (albeit with a reduced number of spaces).

### Were you just really bored one day?

Yeah, pretty much. These lesson files were generated with Emacs `query-replace-regexp` and the regexes `^\([^QIM]\):  ? ? ? ? ?\([^ ]\)`, `\1:\2`,  `  \([^ .]\)` (note the leading spaces) and ` \1` (again, note leading space).
