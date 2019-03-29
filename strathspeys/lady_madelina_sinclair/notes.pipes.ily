% 4/4 Lady Madelina Sinclair
% Pipes
\version "2.18.2"
composerPipes = ""
arrangerPipes = "1936"
pipeglobal = {
	\key a \mixolydian
}
% Music
pipesAA = {
	f8 |
	\dble e8. a16	\dblc c8. \gre a16	\grg c16 [ \grip e8. ]	\dblf f4 |
	\dble e8. a16	\dble e8. c16	\dblc c16 b8.	\taor b8. f16 |
	\dble e8. a16	\dblc c8. \gre a16	\grg c16 [ \grip e8. ]	\dblA A4 |
	\birl a4	\dblc c8. \gre b16	\dblb b16 \gre a8.	\wbirl a8
}
pipesAB = {
	f8 |
	\dble e8. a16	\dblc c8. \gre a16	\grg c16 [ \grip e8. ]	\dblf f4 |
	\dble e8. a16	\dble e8. c16	\dblc c16 b8.	\taor b8. \grd c16 |
	\grip e4	\dblf f8. c16	\grip e4	\dblA A4 |
	\birl a4	\dblc c8 \gre b8	\dblb b16 \gre a8.	\wbirl a8
}

pipesBA = {
	e8 |
	\dblA A8. e16	\dblf f8. e16	\grg \tuplet 3/2 { e8 f g }	\dblA A8. f16 |
	\dble e8. c16	\dblA A8. c16	\dblc c16 b8.	\taor b8. e16 |
	\dblA A8 e8	\dblf f8 e8	\grg \tuplet 3/2 { e8 f g }	\dblA A4 |
	\grg A8. e16	\dblf f8. e16	\dblA A4	\tuplet 3/2 { e8 f g }
}
pipesBB = {
	\dblA A8. f16	\dblg g8. e16	\dblf f8. d16	\dble e8. c16
	\thrwd d8. A16	\hdblc c8. A16	\hdblc c16 b8.	\taor b8. \grd c16
	\grip e4	\dblf f8. c16	\grip e4	\dblA A4 |
	\birl a4	\dblc c8 \gre b8	\dblb b16 \gre a8.	\wbirl a8
}
