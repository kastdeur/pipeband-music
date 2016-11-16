% 4/4 When the Pipers play
% Pipes
\version "2.18.2"
composerPipes = ""
arrangerPipes = "J. Tuttle"
pipeglobal = {
	\bagpipeKey
	}
% Music
pipesA = {
	\tuplet 3/2 { a8 d8 e8  } |
	\grg f2~ f8 [ e8 ] d8. [ b16 ] |
	\grG a2~ a8 [ d8 ] \grg d8 [ c8 ] |
	\thrwd d2~ d8 [ \grg d16 e16 ] f8. [ g16 ] |
	\hdble e2~ e8 [ \grg e8 ] f8 [ g8 ] | 
	
	\dblA A2~ A8 [ g16 f16 ] e8 [ d8 ] |
	\grg f8. [ d16 ] a4. \grg f8 d8 [ b8 ] |
	\grg a8. [ e16 ] \grG e4. a8 \grg \tuplet 3/2 { a8 b8 d8 } |
	\grg d2~ d4
}

pipesB = {
	\tuplet 3/2 { a8 d8 e8 } |
	\grg f2~ f8 [ e8 ] d8 [ A8 ] |
	\hdblf f2~ f8 [ d8 ] e8 [ c8 ] |
	\thrwd d2~ d8 [ \grg d16 e16 ] f8. [ g16 ] |
	\hdble e2~ e8 [ A8 ] \grg A8. [ f16 ] | 

	d16 [ f8.~ ] f4. e8 d8. [ b16 ] |
	\grG a2~ a8 [ \grg f8 ] d8 [ b8 ] |
	\grg a8. [ e16 ] \gra e4. a8 \grg \tuplet 3/2 { a8 b8 d8 } |
	\grg d2~ d4 
}
