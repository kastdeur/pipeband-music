% 6/8 O, kom er eens kijken
% Pipes
\version "2.18.2"
composerPipes = ""
arrangerPipes = "Seaforth Highlanders of Holland"
pipeglobal = {
	\bagpipeKey
}
% Music
pipesAA = {
	\grg c4. \thrwd d8[ c d] |
	\dble e4. \hdblA A4. |
	a4 \taor a8 \grg b8[ a b] |
	\grg c8[ d c] \dblb b4. |

	\grg c4. \thrwd d8[ c d] |
	\dble e4. \hdblA A4. |
	a4 \taor a8 \grg c4 b8 |
}
pipesA = {
	\pipesAA
	\grG a4.~ a4 e8 |
}
pipesB = {
	\gra e4 d8 \grg b8[ c d] |
	\dble e4 c8 \grg a4 e8 |
	\gra e4 d8 \grg b8[ c d] |
	\dble e4 c8 \grg a4  e8 |

	\grg f4 \gre f8 A8[ g f] |
	\dble e4 \gra e8 A4 e8 |
	\gra e8[ f e] \grg e8[ d c] |
	\dblc c4. \dblc c4. |
}
pipesC = {
	\pipesAA
	\grG a2.|
}
