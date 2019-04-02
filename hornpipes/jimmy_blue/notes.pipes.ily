% 2/4 Jimmy Blue
% Pipes
\version "2.18.2"
composerPipes = "Colin Craig"
arrangerPipes = ""
pipeglobal = {
	\key d \major
}
% Music
pipesA = {
	A8 |
	f16 [ d16 \grc d16 f16 ] \grg a8 [ \grg d16 f16 ] |
	\grg G8 [ \grg b16 d16 ] \grg a16 [ d16 \grc d16 a16 ] |
	\grg f16 [ d16 \grc  d16 f16 ] \grg a8 [ \grg d16 f16 ] |
	\grg a8 [ \grd c16 e16 ] \grg a16 [ e16 \gra e16 A16 ] |

	f16 [ d16 \grc d16 f16 ] \grg a8 [ \grg d16 f16 ] |
	\grg G8 [ \grg b16 d16 ] \grg a16 [ d16 \grc d16 a16 ] |
	\grg f16 [ d16 \grc d16 f16 ] \dblA A8 [ d16 f16 ] |
	\grg a8 [ \grd c16 e16 ] \thrwd d8
}

pipesB = {
	\grg c16 [ d16 ] |
	\dble e8 [ \grg a16 e16 ] \grg a16 [ e16 \gra e16 a16 ] |
	\thrwd d8 [ \grg a16 f16 ] \grg a16 [ d16 \grc d16 a16 ] |
	\dble e8 [ \grg a16 f16 ] \grg a16 [ e16 \gra e16 a16 ] |
	f16 [ \grg a16 d16 f16 ] \dblA A8 [ c16 d16 ] |

	\dble e8 [ \grg a16 e16 ] \grg a16 [ e16 \gra e16 a16 ] |
	\thrwd d8 [ \grg a16 f16 ] \grg a16 [ d16 \grc d16 a16 ] |
	\dble e8 [ \grg a16 f16 ] \grg a16 [ e16 \gra e16 f16 ] |
	\grg a8 [ e16 a16 ] \thrwd d8
}

pipesC = {
	A8 |
	f16 [ d16 \grc d16 f16 ] \grg a16 [ d16 \grc d16 f16 ] |
	\grg G8 [ \grg b16 d16 ] \grg G8 [ \grg b16 d16 ] |
	\grg a16 [ d16 \grc d16 f16 ] \grg f16 [ A16 d16 f16 ] |
	\grg a8 [ \grd c16 e16 ] \grg a16 [ e16 \gra e16 A16 ] |

	f16 [ d16 \grc d16 f16 ] \grg a16 [ d16 \grc d16 f16 ] |
	\grg G8 [ \grg b16 d16 ] \grg G8 [ \grg b16 d16 ] |
	\grg a16 [ d16 \grc d16 f16 ] \grg f16 [ A16 d16 f16 ] |
	\grg a8 [ \grd c16 e16 ] \thrwd d8
}

pipesDA = {
	\grg c16 [ d16 ] |
	e16 [ a16 \grg a16 e16 ] \grg a16 [ e16 \gra e16 a16 ] |
	f16 [ a16 \grg a16 f16 ] \grg a16 [ f16 \gre f16 d16 ] |
	e16 [ a16 \grg a16 e16 ] \grg a16 [ e16 \gra e16 a16 ] |
	f16 [ \grg a16 d16 f16 ] \dblA A8 [ c16 d16 ] |
}
pipesDBA = {
	e16 [ a16 \grg a16 e16 ] \grg a16 [ e16 \gra e16 a16 ] |
	f16 [ a16 \grg a16 f16 ] \grg a16 [ f16 \gre f16 d16 ] |
	\dble e8 [ \grg a16 f16 ] \grg a16 [ e16 \gra e16 f16 ] |
	\grg a8 [ e16 a16 ] \thrwd d8
}
pipesDBB = {
	e16 [ a16 \grg a16 e16 ] \grg a8 [ e16 a16 ] |
	f16 [ a16 \grg a16 f16 ] \grg a8 [ f16 d16 ] |
	\dble e8 [ \grg a16 f16 ] \grg a16 [ e16 \gra e16 f16 ] |
	\grg a8 [ e16 a16 ] \thrwd d8
}
