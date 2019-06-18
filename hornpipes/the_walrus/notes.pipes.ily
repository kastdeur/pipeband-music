% 2/4 The Walrus
% Pipes
\version "2.18.2"
composerPipes = "R. Mathieson"
pipeglobal = {
	\key a \mixolydian
	\set Staff.midiInstrument = #"bagpipe"
	}
pipesA = {
	\grg b16 [ d16 ] |
	\grg e8 [ a8 ] \grg b16 [ a16 \grg b16 d16 ] |
	\grg e16 [ g16 \grA f16 d16 ] \dble e8 [ \grg d16 b16 ] |
	\grg G16 [ d16 \grg d16 \slurc d16 ] \grg b16 [ a16 \grg b16 d16 ] |
	\dble e8 [ g16 e16 ] \grg d16 [ b16 \grg c16 d16 ] | \break

	\grg e8 [ a8 ] \grg b16 [ a16 \grg b16 d16 ] |
	\grg e16 [ g16 \grA f16 d16 ] \dble e8 [ \grg d16 b16 ] |
	\grg G16 [ \grd G16 \grg b16 d16 ] \grg e16 [ d16 \grg b16 \grd G16 ] |
	\grg a8 [ \wbirl a8 ] \grg a8
}

pipesBA = {
	\grg b16 [ d16 ] |
	\grg e8 [ A8 ] e8 [ \grg d16 b16 ] |
	\grg e16 [ g16 \grA f16 d16 ] \dble e8 [ \grg d16 b16 ] |
	\grg G16 [ d16 \grg d16 \slurc d16 ] \grg b16 [ a16 \grg b16 d16 ] |
	\dble e8 [ g16 e16 ] \grg d16 [ b16 \grg c16 d16 ] |
}
pipesBBA = {
	\grg e8 [ A8 ] e8 [ \grg d16 b16 ] |
	\grg e16 [ g16 \grA f16 d16 ] \dble e8 [ \grg d16 b16 ] |
	\grg c16 [ d16 \slurc d16 b16 ] \grg G16 [ a16 \grg b16 \grd G16 ] |
	\grg a8 [ \wbirl a8 ] \grg a8
}
pipesBBB = {
	\grg e8 [ a8 ] \grg b16 [ a16 \grg b16 d16 ] |
	\grg e16 [ g16 \grA f16 d16 ] \dble e8 [ \grg d16 b16 ] |
	\grg G16 [ \grd G16 \grg b16 d16 ] \grg e16 [ d16 \grg b16 \grd G16 ] |
	\grg a8 [ \wbirl a8 ] \grg a8
}
% Part 3
pipesCA = {
	a8 |
	\grg e16 [ a16 \grg a16 \grd a16 ] \grg b16 [ a16 \grg b16 d16 ] |
	\grg e16 [ g16 \grA f16 d16 ] \dble e8 [ \grg d16 b16 ] |
	\grg c16 [ d16 \slurc d16 b16 ] \grg G16 [ \grd G16 \grg b16 d16 ] |
	\dble e8 [ g16 e16 ] \grg d16 [ b16 \grg c16 d16 ] | \break
}
pipesCBA = {
	\grg e16 [ a16 \grg a16 \grd a16 ] A16 [ a16 \grg a16 g16 ]~ |
	g16 [ a16 \grg f16 a16 ] \dble e8 [ \grg d16 b16 ] |
	\grg G16 [ \grd G16 \grg b16 d16 ] \grg e16 [ d16 \grg b16 \grd G16 ] |
	\grg a8 [ \wbirl a8 ] \grg a8
}
pipesCBB = {
	\grg e16 [ a16 \grg a16 \grd a16 ] A16 [ a16 \grg a16 g16 ]~ |
	g16 [ a16 \grg f16 a16 ] \dble e8 [ \grg d16 b16 ] |
	\grg d16 [ \slurc d16 \grg e16 f16 ] \grA g16 [ f16 \grg e16 d16 ] |
	\grg e8 [ \gra e8 ] \dble e8
}
% Part 4
pipesDA = {
	\grg e16 [ g16 ] |
	\dblA A8 [ e16 g16 ] A16 [ g16 \grA e16 d16 ] |
	\grg e16 [ g16 \grA d16 e16 ] \dblA A8 [ g16 e16 ] |
	\thrwd d8 [ \grg e16 f16 ] \grg d16 [ b16 \grg b16 \grG b16 ] |
	\dble e8 [ g16 e16 ] \grg d16 [ b16 \grg c16 d16 ] |
}
pipesDBA = {
	e16 [ A16 \grg A16 g16 ] \grA e16 [ d16 \grg e16 g16 ] |
	A16 [ g16 \grA e16 d16 ] \dble e8 [ \grg d16 b16 ] |
	\grg c16 [ d16 \slurc d16 b16 ] \grg G16 [ a16 \grg b16 \grd G16 ] |
	\grg a8 [ \wbirl a8 ] \grg a8
}
pipesDBB = {
	\grg e16 [ a16 \grg a16 \grd a16 ] A16 [ a16 \grg a16 g16 ]~ |
	g16 [ a16 \grg f16 a16 ] \dble e8 [ \grg d16 b16 ] |
	\grg G16 [ \grd G16 \grg b16 d16 ] \grg e16 [ d16 \grg b16 \grd G16 ] |
	\grg a8 [ \wbirl a8 ] \grg a8
}
