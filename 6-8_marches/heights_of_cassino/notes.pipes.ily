% 6/8 Heights of Cassino
% Pipes
\version "2.18.2"
composerPipes = "PM D. MacRae" % QoCHldrs
arrangerPipes = ""
pipeglobal = {
	\key d \major
}
% Music
pipesAA = {
	e8 |
	\grg a4	\taor a8	\grg b16 d8. e8 |
	\dblf f4 A8	\hdblf f8. e16 d8 |
	\dble e4 \grip e8	\dble e4 \thrwd d8 |
	\grg e16 f8. e8	\dbld d8. \grg b16 \grd G8 |
}
pipesAB = {
	\grg a4	\taor a8	\grg b16 d8. e8 |
	\dblf f4 A8	\hdblf f8. e16 d8 |
	\dblf f4 \birl a8	\grg e16 f8. e8 |
	\thrwd d4.	\wslurd d4
}

pipesBA = {
	\hslurg g8 |
	A8. f16 \grg d8	\dblf f4. |
	\grg f4 A8	\hdblf f8. e16 d8 |
	\dble e4 \grip e8	\dble e4 \thrwd d8 |
	\grg e16 f8. e8	\dbld d8. \grg b16 \grd G8 |
}
pipesBB = {
	A8. f16 \grg d8	\dblf f4. |
	\grg f4 A8	\hdblf f8. e16 d8 |
	\dblf f4 \birl a8	\grg e16 f8. e8 |
	\thrwd d4.	\wslurd d4
}

pipesCA = {
	f8 |
	\gbirl a4.	\dblb b8. \grg a16 \grd G8 |
	\grg a4 \taor a8	\dblf f4. |
	\grg f4 A8	\hdblf f8. e16 d8 |
	\grg e16 f8. e8	\dbld d8. \grg b16 \grd G8 |
}
pipesCB = {
	\gbirl a4.	\dblb b8. \grg a16 \grd G8 |
	\grg a4 \taor a8	\dblf f4. |
	\grg f4 \birl a8	\grg e16 f8. e8 |
	\thrwd d4.	\wslurd d4
}

pipesDA = {
	\hslurg g8 |
	A8. f16 \grg e8	\thrwd d8. e16 f8 |
	\grg a4 \taor a8	\dblf f4. |
	\grg f4 A8	\hdblf f8. e16 d8 |
	\grg e16 f8. e8	\dbld d8. \grg b16 \grd G8 |
}
pipesDBA = {
	A8. f16 \grg e8	\thrwd d8. e16 f8 |
	\grg a4 \taor a8	\dblf f4.
	\dblf f4 \birl a8	\grg e16 f8. e8 |
	\thrwd d4.	\wslurd d4
}
pipesDBB = {
	\pipesCB
}
