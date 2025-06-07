html2text(1) -- HTML to text rendering aimed for E-mail
=======================================================

`html2text` attempts to render HTML in a way that would resemble the
original intentions using the restricted dimensions and capabilities of
terminal or text output.

Features
--------
In all fairness, `html2text` is far from complete.  It interprets HTML
in a somewhat relaxed way, in order to cope with incorrect sequences
somewhat.  Reason for this is that in the wild, particularly with
E-mail, incorrect HTML is (still) often seen.  The highlights of what
`html2text` currently supports are:
- rendering of tables, aligning the cells, supporting colspan
- alignment of elements, center, left and right
- widths of elements, percentages or pixels
- colour, foreground and background are translated into ANSI 256-colour
  escape sequences
- bold, underline, overstrike and italics support
- links can be output as list with references in the text, like
  `this[1]`
- input and output charset conversions

E-mail integration
------------------
The primary use for `html2text` is with text-based email clients like
[http://mutt.org](Mutt).  Since more and more E-mail is sent as HTML, it
is no longer feasible not to have HTML rendering.  Often the HTML
version is also better rendered by `html2text` than the text/plain
variant, if available at all.  (Or it just says you need to use an
HTML-capable reader.)

For Mutt, the configuration is mostly done through `~/.mailcap`.  An
entry like this will enable the pager to auto\_view:
```
text/html; html2text -ansi -links -from_encoding %{charset} -width ${COLUMNS:-80} '%s'; copiousoutput; description=HTML Text; nametemplate=%s.html
```
This instructs html2text to use ANSI escape codes in its output, and use
the current terminal width as limit, if it can.  Mutt needs to be instructed to allow ANSI escapes, and invoke the mailcap entry via `~/.muttrc`:
```
set allow_ansi=yes      # html2text -ansi rich rendering
auto_view text/html
alternative_order text/html  text/plain
```
For other clients probably similar configurations have to be made.

Origin
------
This is a continuation of html2text from
[http://www.mbayer.de/html2text](http://www.mbayer.de/html2text).
This repository includes some of the patches, no longer available at the
original sources, and improvements in functionality and building.
Starting from version 2.0, the official home of `html2text` is at
[https://gitlab.com/grobian/html2text](https://gitlab.com/grobian/html2text).
