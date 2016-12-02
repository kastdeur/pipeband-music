% 2/4 Sinterklaas goed Heiligman
% Pipes
\version "2.18.2"
composerPipes = ""
arrangerPipes = "Seaforth Highlanders of Holland"
pipeglobal = {
	\bagpipeKey
}
% Music
pipesAA = {
	\repeat unfold 2 {
		\grg e8 \gra e 	\grg f8 \gre f |
		\grg e8 \gra e	\dblc c4 |
	}

	\repeat unfold 3 {
		\grg d8 \grc d	\grg d b |
	}
}
pipesAB = {
	\grg d4	\grG d |
	\grg d16 \grc d \gre d8	\grg d8 b |
	\dbld d4	\grG d4 |
	\grg a8 b	\grg c d |

	\dble e4	\grG e |
	A8 f	\dbld d c |
	\dblb b4	\grG a |
}
