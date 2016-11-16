% 4/4 Bells of Dunblane
% Pipes
\version "2.18.2"
composerPipes = "R. Mathieson"
pipeglobal = {
	\bagpipeKey
	}
% Music
pipesA = {
	\grg a8. [ \grd c16 ] |
	\dble e2~ e8 [ \grG e8 ] \grg f8 [ \dblA A8 ] |
	e16 [ c8.~ ] c4~ c8 [ \grG c8 ] \grg d16 [ c16 b8 ] |
	\grg c16 [ e8.~ ] e4~ e8 [ \grG e8 ] \grg d8. [ b16 ] |
	\grg c16 [ a8.~ ] a2 
}
pipesBA = {
	\grg a8 [ \grd a8 ] |
	\grg f2~ f8 [ \grg f8 ] g16 [ \grA f16 g8 ] |
	\grA f16 [ d8.~ ] d2 \grg \tuplet 3/2 { d8 [ c8 b8 ] } |
	\grg c16 [ e8.~ ] e4~ e8 [ \grG e8 ] \grg d8. [ b16 ] |
	\grd c2. \grg a8 [ \grd a8 ] 
}
pipesBB = {
	\grg f2~ f8 [ \grg f8 ] g16 [ \grA f16 g8 ] |
	\grA f16 [ d8.~ ] d2 \grg \tuplet 3/2 { d8 [ c8 b8 ] } |
	\grg c16 [ e8.~ ] e4~ e8 [ \grG e8 ] \grg d8. [ b16 ] |
	\grg c16 [ a8.~ ] a4~ a8 [ e8 ] 
}
pipesC = {
	\grg f8 [ \dblA A8 ] |
	e16 [ c8.~ ] c4~ c8 [ \grG c8 ] \grg d16 [ c16 b8 ] |
	\grg c16 [ e8.~ ] e4~ e8 [ \grG e8 ] \grg f8 [ \dblA A8 ] |
	e16 [ c8.~ ] c4~ c8 [ \grG c8 ] \grg d8. [ b16 ] |
	\grG a2. 
}
