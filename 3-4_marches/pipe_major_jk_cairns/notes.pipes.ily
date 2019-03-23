% 3/4 Pipe Major J. K. Cairns
% Pipes
\version "2.18.2"
composerPipes = " PM A. M. Cairns, MMM, CD"
pipeglobal = {
	\key a \mixolydian
}
% Music
pipesAA = {
 \grg a8. [ b16 ] \grip c4~ c8 [ e8 ] |
 \grg \tuplet 3/2 { d8 c8 b8 } \grG a2 |
 \thrwd d8. [ e16 ] \grg f4~ f8 [ A8 ] |
 \thrwd d8 [ f8 ] \dblf f8 [ e8~ ] e4 | 
}
pipesABA = {
 \grg c8. [ d16 ] \dble e4~ e8 [ f8 ] |
 \dble e8 [ c8 ] \dblb b8 [ \gre a8 ] a4 |
 \grg b8 [ c8 ] \dble e8 [ f8 ] A8. [ f16 ] |
 \dble e8 [ a8 ] \dble c8 [ \gre b8~ ] b4
}
pipesABB = {
 \grg c8 [ e8 ] \dblA A4~ A8 [ g8 ] |
 A8. [ f16 ] \dble e8 [ a8 ] a4 |
 \grg \tuplet 3/2 { f8 e8 d8 } \dblc c4~ c8 [ e8 ] |
 \grg \tuplet 3/2 { d8 c8 b8 } \grG a2
}

pipesBA = {
\grg e8. [ f16 ] \dble e4~ e8 [ c8 ] |
 \grg a8 [ c8 ] \dblf f8 [ e8 ] e4 |
 A8. [ g16 ] \dblA A4 A8 [ f8 ] |
 \thrwd d8 [ f8 ] \dblf f8 [ e8~ ] e4 | 

 \grg c8. [ d16 ] \dble e4~ e8 [ f8 ] |
 \dble e8 [ c8 ] \dblb b8 [ \gre a8 ] a4 |
 \grg b8 [ c8 ] \dble e8 [ f8 ] A8. [ f16 ] |
 \dble e8 [ a8 ] \dble c8 [ \gre b8 ] b4 | 
}
pipesBB = {
 \grg a8. [ b16 ] \grip c4~ c8 [ e8 ] |
 \grg \tuplet 3/2 { d8 c8 b8 } \grG a2 |
 \thrwd d8. [ e16 ] \grg f4~ f8 [ A8 ] |
 \thrwd d8 [ f8 ] \dblf f8 [ e8~ ] e4 | 

 \grg c8 [ e8 ] \dblA A4~ A8 [ g8 ] |
 A8. [ f16 ] \dble e8 [ a8~ ] a4 |
 \grg \tuplet 3/2 { f8 e8 d8 } \dblc c4~ c8 [ e8 ] |
 \grg \tuplet 3/2 { d8 c8 b8 } \grG a2 
}
