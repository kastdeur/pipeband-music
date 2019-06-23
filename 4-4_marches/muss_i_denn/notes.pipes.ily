% 4/4 Muss I Denn (Wooden Heart)
% Pipes
\version "2.18.2"
composerPipes = ""
arrangerPipes = ""
pipeglobal = {
	\key a \mixolydian
}
% Music
pipesAA = {
	\grg a8 b8 |
	\grip c4	\grg c8 e8	\thrwd d4	\grg d8 f8 |
	\grg e8. f16	\grg e8 d8	\dblc c2 |
	\grg e8. f16	\grg e8 d8	\dblc c4	\grg c8 e8 |
	\thrwd d4	\slurd d8 c8	\dblb b4 \dble e4
	\dblc c2 \grip c4
}
pipesAB = {
	\grg a8 b8 |
	\grip c4	\grg c8 e8	\thrwd d4	\grg d8 f8 |
	\grg e8. f16	\grg e8 d8	\dblc c2 |
	\grg e8. f16	\grg e8 d8	\dblc c4	\grg c8 e8 |
	\thrwd d4	\slurd d8 c8	\dblb b4 \dble e4
	\grg a2 \wbirl a4
}
pipesA = {
  \pipesAA
  \pipesAB
}

pipesBA = {
	\grg a8 \grd c8 |
	\dblb b4.	\grd c8	\thrwd d4 b4 |
	\dblc c4	\grg c8 d8	\dble e4	\gra e4 |
	\dblf f4	\gre f4	\dblA A4	\grf g8 f8 |
	\dble e2	\gra e4
}
pipesBB = {
  \pipesAB
}
pipesB = {
  \pipesBA
  \pipesBB
}
