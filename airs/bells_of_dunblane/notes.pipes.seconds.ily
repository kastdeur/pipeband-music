% 4/4 Bells of Dunblane
% Pipes (Seconds)
\version "2.18.2"
composerPipesSecnd = "R. Mathieson"
pipessecndglobal = {
	\key a \mixolydian
}
% Music
pipessecndA = {
	\grg a8. [ \grd c16 ] |
	\dble e2~ e8 [ \grG e8 ] \grg f8 [ \dblA A8 ] |
	e16 [ c8.~ ] c4~ c8 [ \grG c8 ] \grg d16 [ c16 b8 ] |
	\grg c16 [ e8.~ ] e4~ e8 [ \grG e8 ] \grg d8. [ b16 ] |
	e2.
}
pipessecndB = {
	\grg a8 [ \grd a8 ] |
	\grg d2~ d8 [ \grg d8 ] e16 [ d16 e8 ] |
	\grg d16 [ f8.~ ] f2 \grg \tuplet 3/2 { f8 [ e8 d8 ] } |
	\grg e16 [ A8.~ ] A4 e8 [ \grg A8 ] f8. [ d16 ] |
	e2.
}

pipessecndC = {
	c4 |
	\grg d8. [ b16 ] c16 [ a8.~ ] a2 |
	\grg b16 [ a16 G8 ] a16 [ c8.~ ] c4. \grG c8 |
	\grg d8. [ b16 ] \grd c16 [ a8.~ ] a2 |
	\grg d8. [ c8 b16 ] \grG a4.
}
