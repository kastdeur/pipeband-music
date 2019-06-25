% 2/4 The Jolly Beggarman
% Pipes
\version "2.18.2"
composerPipes = ""
arrangerPipes = ""
pipeglobal = {
	\key a \mixolydian
}
% Music
pipesMid = {
	\grg c16. d32 |
	\grg e16. [ a32 \gbirl a8 ] \grg a16. [ b32 \grg c32 \grd a16. ] |
	\grg b16. [ \grd G32 \gre G16. a32 ] \dblb b8
}
pipesEnd = {
	\grg c16. d32 |
	\grg e16. [ A32 \grg A16. g32 ] A16. [ f32 \dble e16. d32 ] |
	\dblc c8 [ \gre a8 ] \wbirl a8
}
pipesPartA = {
	e8 |
	\grg a16. [ \grd a32 \gre a16. \grd b32 ] \grg a16. [ b32 \grg c16. d32 ] |
	\grg e16. [ f32 \grg e16. c32 ] \thrwd d8
}
pipesPartB = {
	\grg e16. [ f32 ] |
	\dblg g8 [ \slurf g16. A32 ] g16. [ f32 \grg e16. f32 ] |
	\grA g16. [ f32 \grg e16. c32 ] \thrwd d8
}
pipesPartC = {
	e8 |
	\grg a16. e32 e16. a32	\grg e16. a32 a16. a32 |
	\grg a16. e32 e16. c32	\thrwd d8
}
pipesPartD = {
	\grg e16. f32 |
	\dblg g16. f32 e16. f32	g8 A16. g32 |
	\grA f16. d32 f16. e32	\thrwd d8
}

%A
pipesAA = {
	\pipesPartA
	\pipesMid
}
pipesAB = {
	\pipesPartA
	\pipesEnd
}
% B
pipesBA = {
	\pipesPartB
	\pipesMid
}
pipesBBA = {
	\pipesPartB
	\pipesEnd
}
pipesBBB = {
	\pipesAB
}
% C
pipesCA = {
	\pipesPartC
	\pipesMid
}
pipesCB = {
	\pipesPartC
	\pipesEnd
}
% D
pipesDA = {
	\pipesPartD
	\pipesMid
}
pipesDBA = {
	\pipesPartD
	\pipesEnd
}
pipesDBB = {
	\pipesBBB
}
