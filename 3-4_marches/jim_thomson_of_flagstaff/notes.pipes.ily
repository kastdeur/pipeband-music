% 3/4 Jim Thomson of Flagstaff
% Pipes
\version "2.18.2"
composerPipes = "R. Watt"
arrangerPipes = ""
pipeglobal = {
	\key a \mixolydian
}
% Music
pipesAAA = {
 \grg a8. [ b16 ] \grip c4 \dblc c8 [ a8 ] |
 \dblb b8 [ a8 ] \grg f4 \gre f4 |
 \dblA A8. [ f16 ] \grg e4 e8 [ f8 ] |
 \dble e8. [ c16 ] \dblb b2 |
}
pipesAAB = {
 \grg a8. [ b16 ] \grip c4 \dblc c8 [ a8 ] |
 \dblb b8 [ a8 ] \grg f4 \gre f4 |
 \grg e8. [ f16 ] \dble e4 e8 [ c8 ] |
}

pipesA = {
	\pipesAAA
	\pipesAAB
}
pipesABA = {
 \dblb b8.  \grG a16  \grg a2
}
pipesABB = {
 \dblb b8.  \grG a16  a4.
}

pipesBA = {
 \wbirl a8 |
 \grg \tuplet 3/2 { b8 [ c8 e8 ] } \grg f4 \grg f8 [ e8 ] |
 \dblA A8. [ e16 ] \grg c4 \grip c4 |
 \dblA A8. [ f16 ] \grg e4 e8 [ f8 ] |
}
pipesBBA = {
 \dble e8. [ c16 ] \dblb b4. \grG a8 |

 \grg \tuplet 3/2 { b8 [ c8 e8 ] } \grg f4 \grg f8 [ e8 ] |
 \dblA A8. [ e16 ] \grg c4 \grip c4 |
 \dblA A8. [ f16 ] \grg e4 e8 [ c8 ] |
 \dblb b8. [ \grG a16 ] a4.
}
pipesBBB = {
 \dble e8. [ c16 ] \dblb b2 |

 \pipesAAB
 \pipesABB
}
