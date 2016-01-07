bwwtolily will attempt to convert a .bww or .bmw file to a lilypond
(http://lilypond.org) parsable file. Not all of the embellishments 
get converted properly, this is espessially true with piobaireachd,
and the program will list the embellishments that were not converted.

If you recognize an embellishment that isn't being parsed, please 
send an email regarding the embellishment to jezra@jezra.net and I
will try to add the embellishment to the application.

usage:
>bwwtolily -i /path/to/a/bww/file

optionally, using the "-l" flag will try to run lilypond on the
created .ly file
example:
>bwwtolily -i /path/to/bww/file -l

