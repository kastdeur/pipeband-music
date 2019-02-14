% 6/4 Sands of Kuwait
% Pipes
\version "2.18.2"
composerPipes = "L/Cpl Gordon MacKenzie, QOHLDRS, 1991"
arrangerPipes = ""
pipeglobal = {
	\bagpipeKey
}
% Music
pipesA = {
	a4~ a8 [ \wbirl a8 ] \grg a8 [ A8 ] e16 [ f8. ]~  f4 \grg e8 [ d8 ] |
	\grg G4~ G8 [ \grd G8 ] ~ G8 [ d8 ] \grG a4 ~ a4 \grg \tuplet 3/2 { f8. [ e16 d8 ] } |
	\grg a4~ a8 [ \wbirl a8 ] \grg a8 [ A8 ] e16 [ f8. ] ~ f4 \grg e8 [ d8 ] |
	\slurd d4~ d8 [ b8 ] \grg \tuplet 3/2 { d8. [ e16 f8 ] } \dble e4 ~ e8 [ f8 ] \grg \tuplet 3/2 { f8. [ e16 d8 ] } |

	\grg a4~ a8 [ \wbirl a8 ] \grg a8 [ A8 ] e16 [ f8. ]~ f4 \grg e8 [ d8 ] |
	\grg G4~ G8 [ \grd G8 ]~ G8 [ d8 ] \grG a4~ a4 \grg \tuplet 3/2 { a8. [ b16 c8 ] } |
	\thrwd d4~ d8 [ b8 ] \grg \tuplet 3/2 { d8. [ e16 f8 ] } \dble e4~ e8 [ a8 ] \grg \tuplet 3/2 { f8. [ e16 d8 ] } |
	\grg d4~ d4~ d4 \slurd d4~ d4 \grg \tuplet 3/2 { f8. [ e16 d8 ] } |
}

pipesBA = {
	\dblA A4~ A8 [ a8 ] \grg \tuplet 3/2 { a8. [ d16 A8 ] } e16 [ f8. ]~ f4 \grg e8 [ d8 ] |
	\grg G4~ G8 [ \grd G8 ]~ \tuplet 3/2 { G8. [ b16 d8 ] } \grG a4~ a8 [ f8 ] \grg \tuplet 3/2 { f8. [ e16 d8 ] } |
	\dblA A4~ A8 [ a8 ] \grg \tuplet 3/2 { a8. [ d16 A8 ] } e16 [ f8. ]~ f4 \grg e8 [ d8 ] |
	\dble e4~ e8 [ b8 ] \grg \tuplet 3/2 { d8. [ e16 f8 ] } \dble e4~ e8 [ f8 ] \grg \tuplet 3/2 { f8. [ e16 d8 ] } |
}

pipesBBA = {
	\dblA A4~ A8 [ a8 ] \grg \tuplet 3/2 { a8. [ d16 A8 ] } e16 [ f8. ]~ f4 \grg e8 [ d8 ] |
	\grg G4~ G8 [ \grd G8 ]~ \tuplet 3/2 { G8. [  b16 d8 ] } \grG a4~ a4 \grg \tuplet 3/2 { a8. [ b16 c8 ] } |
	\thrwd d4~ d8 [ b8 ] \grg \tuplet 3/2 { d8. [ e16 f8 ] } \dble e4~ e8 [ a8 ] \grg \tuplet 3/2 { f8. [ e16 d8 ] } |
	\grg d4~ d4~ d4 \slurd d4~ d4 \grg \tuplet 3/2 { f8. [ e16 d8 ] }
}
pipesBBB = {
	a4~ a8 [ \wbirl a8 ] \grg a8 [ A8 ] e16 [ f8. ]~ f4 \grg e8 [ d8 ] |
	\grg G4~ G8 [ \grd G8 ]~ G8 [ d8 ] \grG a4~ a4 \grg \tuplet 3/2 { a8. [ b16 c8 ] } |
	\thrwd d4~ d8 [ b8 ] \grg \tuplet 3/2 { d8. [ e16 f8 ] } \dble e4~ e8 [ a8 ] \grg \tuplet 3/2 { f8. [ e16 d8 ] } |
	\grg d4~ d4~ d4 \slurd d4~ d4~ d4
}
