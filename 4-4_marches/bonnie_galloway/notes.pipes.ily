% 4/4 Bonnie Galloway>
% Pipes
\version "2.18.2"

hvthrwd = { \gripthrwd }
composerPipes = ""
pipeglobal = {
	\key d \major
}
% Music
pipesAA = {
	\grg f4~ f8 [ c8 ] \grg e4 d4 |
	\grg b8 [ d8~ ] d4 \grg a2 |
	\grg a4~ a8 [ b8 ] \hvthrwd d4 f4 |
	\grg e4~ e8 [ f8 ] \dble e4 a4 | 
}
pipesAB = {
	\grg f4~ f8 [ c8 ] \grg e4 d4 |
	\grg b8 [ d8~ ] d4 \gre a2 |
	\grg a4~ a8 [ b8 ] \hvthrwd d4 f4 |
	\grg e4~ e8 [ d8 ] \dbld d2 
}

pipesBA = {
	\dblA A4~ A8 [ \grg A8 ] f4 \hvthrwd d4 |
	\dblA A4 d4 \dblf f2 |
	\dblA A4~ A8 [ \grg A8 ] f4 \hvthrwd d4 |
	\grg c8 [ b8 ] \grg c8 [ d8 ] \dble e4 a4 | 
}
