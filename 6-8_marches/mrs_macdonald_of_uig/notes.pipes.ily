% 6/8 Mrs. MacDonald of Uig
% Pipes
\version "2.24.1"
composerPipes = "PM Donald MacLeod, MBE"
arrangerPipes = ""
sourcePipes = "The Cabarfeidh Collection, 110"
pipeglobal = {
	\key a \mixolydian
}
% Music
pipesMid = {
	\hdble e8. d16 b8	\grg a4 \taor a8 |
	\grg G8. \grd b16 e8	\dbld d8. b16 \grd G8 |
}
pipesEnd = {
	\hdble e8. d16 b8	\grg b16 g8. b8 |
	\grg a8. \grd b16 \gre G8	\grd a4
}
pipesA = {
	e8 |
	\repeat unfold 2 {
		\grg a4 \taor a8	\grg a8. \grd b16 \gre G8 |
		\grg a8. \grg b16 d8	\dble e8. d16 g8 |

		\alternative {
			\pipesMid
			\pipesEnd
		}
	}
}

pipesBA = {
	\grg a8. A16 \grg A8	g16 \grA e8. A8 |
	a8. A16 \grg A8	\hdble e8. d16 g8 |
	\pipesMid
}
pipesBBA = {
	\grg a8. A16 \grg A8	g16 \grA e8. A8 |
	a8. A16 \grg A8	\hdble e8. d16 g8 |

	\hdble e4 d8	\grg e16 g8. b8 |
	\grg a8. \grd b16 \gre G8	\grd a4.
}
pipesBBB = {
	\dble e4.	\grg a4 \taor a8 |
	\grg b8. e16 \gra e8	\grg d8. e16 f8 |
	% slightly tweaked pipesEnd
	\grA g8. f16 \grg e8	\grg d16 g8. b8 |
	\grg a8. \grd b16 \gre G8	\grd a4
}

pipesC = {
	g16 \grA f8. |
	\dble e4 d8	\grg e4 \taor a8 |
	g8. e16 \grg d8	\grg e4 \taor a8 |
	\hdblg g4 f8	\dble e4 d8 |
	\slurb b4 e8	\dbld d8. b16 \grd G8 |

	\dble e4 d8	\grg e4 \taor a8 |
	g8. e16 \grg d8	\grg e8. f16 g8 |
	A8. g16 \grA e8	\grg d16 g8. b8 |
	\grg a8. \grd b16 \gre G8	\grd a4
}

pipesDA = {
	\grg e8 |
	A8. e16 \gra e8	A4 \grip A8 |
	e8. f16 g8	A8. f16 \grA e8 |
	g8. e16 \grg d8	\grA g4 \grip g8 |
	\thrwd d8. e16 f8	\grA g8. e16 \grg d8
}
pipesDBA = {
	A8. e16 \gra e8	A4 \grip A8 |
	g8. f16 \grg e8	\thrwd d8. e16 f8 |
	\grA g8. f16 \grg e8	\grg d16 g8. b8 |
	\grg a8. \grd b16 \gre G8	\grd a4
}
pipesDBB = {
	\grg e8. f16 g8	\grA f8. g16 A8 |
	g8. f16 \grg e8	\thrwd d8. e16 f8 |
	\grA g8. f16 \grg e8	\grg d16 g8. b8 |
	\grg a8. \grd b16 \gre G8	\grd a4
}
