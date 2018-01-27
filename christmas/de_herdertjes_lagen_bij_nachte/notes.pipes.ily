% 6/8 De Herdertjes lagen bij Nachte
% Pipes
\version "2.19.2"
composerPipes = ""
arrangerPipes = "PM T.F.J. de Boone"
pipeglobal = {
	\bagpipeKey
}
% Music
pipesA = {
	\repeat unfold 2 {
		a8 |
		\thrwd d8 [ f8 e8 ] \thrwd d8 [ c8 d8 ] |
		\dble e8 [ g8 f8 ] \dble e4 f8 |
		g8 [ f8 e8 ] f8 [ \gra f8 e8 ] |
	} \alternative {
		{ \thrwd d4.~ d4 }
		{ \thrwd d2. }
	}
}

pipesB = {
	e4. \grg e8 [ f8 e8 ] d8 [ c8 b8 ] |
	\dblb b4. a4 \grG a8 |
	\grg d8 [ c8 d8 ] \grg d8 [ c8 b8 ] |
	\grg a4.~ a4

	\grG a8 | 
	\grg d8 [ c8 d8 ] \grg e8 [ d8 e8 ] |
	\grg f4 g8 A4 g8 |
	f8 [ e8 d8 ] \grg f4 e8 |
	\thrwd d4.~ d4
}
