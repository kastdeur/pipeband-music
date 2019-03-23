% 3/4 Daar wordt aan de deur geklopt
% Pipes
\version "2.18.2"
composerPipes = ""
arrangerPipes = "Seaforth Highlanders of Holland"
pipeglobal = {
	\key a \mixolydian
}
% Music
pipesAA = {
	\grg e4. f8 e[ d] |
	\grg c4 \grd a \gre a |
	\grg b4 \grd b \gre b |
	\grg c4 \grd a \gre a |
}
pipesAB = {
	\grg e4. f8 e[ d] |
	\grg c4 \grd a \gre a |
	\grg b4 \grd b \gre b |
	\grG a2. |
}
pipesBA = {
	\repeat unfold 2 {
		\grg b4 \grd b \gre b |
		\grg c4 \grd a \gre a |
	}
}
