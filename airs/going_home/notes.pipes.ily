% 6/8 Going Home
% Pipes
\version "2.18.2"
composerPipes = "A. Dvořák (W. A. Fisher)"
arrangerPipes = ""
pipeglobal = {
	\key a \major
}
% Music
pipesAA = {
	\grg c4 e8 \gra e4. |
	\grg c4 b8 \grG a4. |
	\grg b4 c8 \grg e4 c8 |
	\grg b4. \grip b4. |
}
pipesAB = {
	\grg c4 e8 \gra e4. |
	\grg c4 b8 \grG a4. |
	\grg b4 c8 \grg b4 \grG a8 |
	\grg a4. \wbirl a4.
}
pipesA = {
	\pipesAA
	\pipesAB
}

pipesBA = {
	\grg f4 A8 \grg A4. |
	\slurf g4 e8 \grg f4. |
	\grg f4 A8 \slurf g4 e8 |
	\grg f4. \gre f4. |

	\grg f4 A8 \grg A4. |
	\slurf g4 e8 \grg f4. |
	\grg f4 A8 \slurf g4 e8 |
	\grg f4. \grg e4. |
}
pipesBB = {
	\pipesAA

	\grg c4 e8 \gra e4. |
	\grg f4 g8 \dblA A4. |
	\grg b4 c8 \grg b4 \grG a8 |
	\grg a4. \wbirl a4.
	}