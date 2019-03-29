% 6/8 Pipe Major Donald MacLean of Lewis
% Pipes
\version "2.18.2"
composerPipes = ""
arrangerPipes = ""
pipeglobal = {
	\key a \mixolydian
}
% Music
pipesAA = \fixed c'' {
	e8 |
	\grg a,8. \grd b,16 \gre g,8 \grg a,4. |
	\dble e8. d16 g8 \hdble e8. d16 b,8 |
	\grg a,8. \grd b,16 \gre a,8 \grg g,4 \grd b,8 |
	\thrwd d4 e8 \dble e8. d16 b,8 |
}
pipesAB = \fixed c'' {
	\grg a,8. \grd b,16 \gre g,8 \grg a,4. |
	\dble e8. d16 g8 \hdble e8. d16 b,8 |
	\grg g,8. \grd b,16 g8 \hdble e8. d16 b,8 |
	\grg a,4. \wbirl a,4 \tag #'midiRemove { s8 |}
}

pipesBA = \fixed c'' {
	\dblg g8 |
	\dblA a4 e8 \gra e4 \dblg g8 |
	a8. e16 \gra e8 \dble e8. d16 b,8 |
	\grg a,8. \grd b,16 \gre a,8 \grg g,4 \grd b,8 |
	\thrwd d4 e8 \dble e8. d16 b,8 |
}
pipesBBA = \fixed c'' {
	\dblA a4 e8 \gra e4 \dblg g8
	a8. e16 \gra e8 \dble e8. d16 b,8
	\grg g,8. \grd b,16 g8 \hdble e8. d16 b,8
	\grg a,4. \wbirl a,4 \tag #'midiRemove { s8 |}
}
pipesBBB = \pipesAB

pipesCA = \fixed c'' {
	e8 |
	\grg a,8. e16 \gra e8 \grg d8. e16 \gra e8 |
	\grg a,8. e16 \gra e8 \dble e8. d16 b,8 |
	\grg a,8. \grd b,16 \gre a,8 \grg g,8. \grd g,16 \gre g,8 |
	\grg b,16 d8. e8 \dble e8. d16 b,8 |
}
pipesCB = \fixed c'' {
	\grg a,8. e16 \gra e8 \grg d8. e16 \gra e8 |
	\grg a,8. e16 \gra e8 \dble e8. d16 b,8 |
	\grg g,8. \grd b,16 g8 \hdble e8. d16 b,8 |
	\grg a,4. \wbirl a,4  \tag #'midiRemove { s8 |}
}

pipesDA = \fixed c'' {
	e8 |
	\gbirl a,4 a8 \grg a8. g16 a8 |
	g8. e16 \gra e8 \dble e8. d16 b,8 |
	\grg a,8. \grd b,16 \gre a,8 \grg g,4 \grd b,8 |
	\thrwd d4 e8 \dble e8. d16 b,8 |
}
pipesDBA = \fixed c'' {
	\gbirl a,4 a8 \grg a8. g16 a8
	g8. e16 \gra e8 \dble e8. d16 b,8
	\grg g,8. \grd b,16 g8 \hdble e8. d16 b,8
	\grg a,4. \wbirl a,4 \tag #'midiRemove { s8 |}
}
pipesDBB = \pipesAB
