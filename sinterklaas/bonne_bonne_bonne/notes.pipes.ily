% 2/4 Sinterklaasje bonne bonne bonne
% Pipes
\version "2.18.2"
composerPipes = ""
arrangerPipes = "Seaforth Highlanders of Holland"
pipeglobal = {
	\key a \major
}
% Music
pipesAA =  \repeat unfold 2 {
	\grg e4 \gra e4 |
	\grg f4 \gre f4 |
	\grg e8[ f8] \grg e8[ d8] |
	\dblc c4 \grG a4 |
}
pipesAB = {
	\grg d4 \grd d4 |
	\dbld d4 b4 |
	\dbld d2 |
	\grG d2 |

	\grg f4 \grd e4 |
	\thrwd d4 c4 |
	\dble b2 |
	\grG a2 |
}
