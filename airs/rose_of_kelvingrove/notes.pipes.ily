% 4/4 Rose of Kelvingrove
% Pipes
\version "2.18.2"
composerPipes = "D. Knox"
arrangerPipes = ""
pipeglobal = {
	\bagpipeKey
}
% Music
pipesAA = {
	\grg a8. [ d16 ] |
	\grg f8 [ e8 ] \grg d8 [ c8 ] \thrwd d4 \grg a8. [ d16 ] |
	\dblb b2~ b4 \grg b4 |
	\grA g8 [ f8 ] \grg e8 [ d8 ] \dblb b4 \grg G8. [ d16 ] |
	\dblc c2~ c4 \grg c8. [ b16 ] |

	\grg a4~ a8 [ d8 ] \grg f4 A8. [ g16 ] |
	\grA g2~ g4 d4 |
}
pipesABA = {
	\dble e4 \gra e4 \grg f4 \grg e8. [ d16 ] |
	\dble e2~ e4
}
pipesABB = {
	\dble e4~ e8 [ \gra e8 ] \grg f8 [ e8 ] \grg d8 [ c8 ] |
	\thrwd d2.
}

pipesBAA = {
	a4 |
	\dblA A4~ A8 [ g8 ] \grA f4 \grg e4 |
	\thrwd d2~ d4 b4 |
	\grA g4~ g8 [ f8 ] \grg e4 d4 |
	\dbld d2 \dblc c4 \gre a4 |

	\dblA A4~ A8 [ g8 ] \grA f4 \grg e4 |
	\thrwd d4~ d8 [ g8 ] \grf g2 |
}
pipesBAB = {
	\grA f4~ f8 [ \birl a8 ] \grg f8 [ e8 ] \grg d8 [ c8 ] |
	\thrwd d2~ d4
}
pipesBA = {
	\pipesBAA
	\pipesBAB
}
pipesBEnding = {
	\grA f2~ f4 \birl a4 |
	\grg f4 e4 \grg d4 c4 |
	\thrwd d1\fermata |
}
