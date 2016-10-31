% 4/4 Highland Cathedral
% Pipes
\version "2.18.2"
composerPipes = "arr. Marc Goudswaart"
pipeglobal = {
	\bagpipeKey
	}
% Music
pipesA = {
	d4. e16 [ f16 ] \dble e8 [ d8 ] \grg a8 [ d8 ] |
	\dble e4. f8 \grg f2 |
	\grg f4. g16 [ A16 ] g8 [ f8 ] \dble e8 [ d8 ] |
	\dble e4. f8 \grg a2 | 

	\grg b4. c16 [ d16 ] \dbld d8 [ a8 ] \grg c8 [ d8 ] |
	\dblA A4. g8 \grA f2 |
	\grg e4. f16 [ g16 ] \dblf f8 [ d8 ] \grg a8 [ d8 ] |
	\dble e4. d8 \dbld d2
}

pipesB = {
	\dblc c4. \gre a8 \grg e4. \grg c16 [ e16 ] |
	\dblf f4. c8 \dblc c4. b8 |
	\grG a4 \grg a8 [ b16 c16 ] \grg b2 |
	\grg c4 \grg c8 [ d16 e16 ] \dblb b2 | 

	\dblc c4. \gre a8 \grg e4. \grg c16 [ e16 ] |
	\dblf f4. c8 \dblc c4. b8 |
	\grg a4 \grg a8 [ b16 c16 ] \dblb b4. \grg a8 |
	\grg a1~ |
	a1
}

pipesHafabraEnd = {
	A2 \hdblf f2 |
	\slurf g8 [ \slurf g8 ] \slurf g8 [ \slurf g8 ] d2
}
