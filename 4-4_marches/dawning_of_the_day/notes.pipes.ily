% 4/4 Dawning of the Day
% Pipes
\version "2.18.2"
composerPipes = "Trad."
arrangerPipes = "PM T.F.J. de Boone"
pipeglobal = {
	\key a \mixolydian
}
% Music
pipeAlines = {
 \grg a8 [ b8 ] |
 \grg c4 \grG c4 \grg c4 \grg b8 [ c8 ] |
 e4 \gra e4 \grg f4 \grg e8 [ c8 ] |
 \grg a4 \grg c8 [ b8 ] \grg a4 b4 |
}

pipesA = {
	\pipeAlines
	\grg a2 \wbirl a4 
}

pipesB = {
 e4 |
 f4. e8 \grg f4 \dblA A4 |
 c4. b8 \grG a4 \grg c8 [ d8 ] |
 \grg e4 \grg c4 A4 c4 |
 \grg b2 \grip b4 
}

pipesBB = {
	\pipeAlines
	\grG a2.
}
