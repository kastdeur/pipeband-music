% 6/8 Leaving Port Askaig
% Pipes
\version "2.18.2"
composerPipes = "PM W. Ross"
arrangerPipes = ""
pipeglobal = {
	\key a \mixolydian
}
% Music
pipesA = {
	e8 |
	\grg a8. [ b16 \grip c8 ]	\grg c16 e8. \grg c8 |
	\dblb b4.	\grG a4 \dble e8 |
	\grg a8. [ b16 \grip c8 ]	\grg c16 e8. A8 |
	\hdblf f4.	\dble e4

	\dblg g8 |
	A4 \grip A8	\hdblf f4 A8 |
	\hdble e8. c16 \grd a8	\dblb b4 \grd c8 |
	\grg a8. [ b16 \grip c8 ]	\grg e8. f16 \grg c8 |
	\dblb b4.	\grG a4
}

pipesBA = {
	\dblg g8 |
	\dblA A4.	\hdble e4. |
	\grg f16 A8. f8	\dble e4.
	\grg a8. [ b16 \grip c8 ]	\grg c16 e8. A8
	\hdblf f4.	\dble e4
}

pipesBBA = {
	\dblg g8 |
	\dblA A4.	\hdble e4. |
	\grg f16 A8. f8	\dble e4. |
	\grg a8. [ b16 \grip c8 ]	\grg e8. f16 \grg c8 |
	\dblb b4.	\grG a4
}
pipesBBB = {
	\dblA A8 |
	a8. \grd c16 e8	\grg e8. f16 g8 |
	A8. g16 f8	\dble e4. |
	\grg a8. [ b16 \grip c8 ]	\grg e8. f16 \grg c8 |
	\dblb b4.	\grG a4
}

pipesC = {
	b8 |
	\grg c16 \grd a8. \grd c8	\grg c16 e8. \grg c8 |
	\dblb b4.	\grG a4 b8 |
	\grg c16 \grd a8. \grd c8	\grg c16 e8. A8 |
	\hdblf f4.	\dble e4

	\dblg g8 |
	A4 \grip A8	\hdblf f4 A8 |
	\hdble e8. c16 \grd a8	\dblb b4 \grd c8 |
	\grg a8. [ b16 \grip c8 ]	\grg e8. f16 \grg c8 |
	\dblb b4.	\grG a4
}

pipesDA = {
	\dblg g8 |
	A4 \grip A8	\hdble e4 A8 |
	\hdblf f8. e16 \grg c8	\dble e4 \dblg g8 |
	A4 \grip A8	e8. \grg f16 A8 |
	\hdblf f4.	\dble e4
}
pipesDBA = {
	\dblg g8 |
	A4 \grip A8	\hdble e4 A8 |
	\hdblf f8. e16 \grg c8	\dble e4 \dblg g8 |
	a8. [ b16 \grip c8 ]	\grg e8. f16 \grg c8 |
	\dblb b4.	\grG a4
	
	
}
pipesDBB = {
	\pipesBBB
}
