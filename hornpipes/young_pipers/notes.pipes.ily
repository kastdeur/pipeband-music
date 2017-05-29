% 2/4 Young Pipers
% Pipes
\version "2.18.2"
composerPipes = "J. Teerlinck-Wiegerinck"
pipeglobal = {
	\bagpipeKey
}
% LOL: In total 296 notes
% Music
pipesEndTwoMeas = {
  	\grg a16 c \grG c \grg c~	c e \gra e c |
	\grg a e c \grg d~	d4 |
}

pipesAAFirstTwoMeas = {
	\grg a8 d8		\grg a16 d \grc d a |
	\grg G16 b \grG b \grg b~	b e \grg d b |
}

pipesAA = {
	\pipesAAFirstTwoMeas
	\grg a8 \gre d		\grg a16 c \grG c a~ |
	a16 d \grc d \grg e		f e \grg d b |
}

pipesAB = {
	\pipesAAFirstTwoMeas
	\pipesEndTwoMeas
}

pipesBAFirstTwoMeas = {
	\grg a8 A		\grg a16 f \gre f a |
	\grg G16 b \grG b \grg b~	b e \grg d b |
}
pipesBA = {
  	\pipesBAFirstTwoMeas
	\grg a8 \grd c		\grg c16 e \gra e \grg a~ |
	a16 d \grc d e	\grg f A f d |
}

pipesBBA = {
	\pipesBAFirstTwoMeas
	\pipesEndTwoMeas
}

pipesBBB = {
	\pipesAAFirstTwoMeas
	\pipesEndTwoMeas
}

pipesCAFirstTwoMeas = {
	\grg a8 d	\grg f16 e \grg d a |
	\grg G16 b \grG b a	\grg G e d b |
}
pipesCA = {
	\pipesCAFirstTwoMeas
	\grg a8 \grd c	\grg c16 e \gra e a |
	\grg d16 c \grg d e	\grg f A f e |
}

pipesCB = {
	\pipesCAFirstTwoMeas
	\pipesEndTwoMeas
}

pipesDAFirstTwoMeas = {
	\grg a8 A	a16 A f d |
	\grg G16 b \grG b a		\grg G e \grg d b |
}

pipesDA = {
	\pipesDAFirstTwoMeas
	\grg c16 e~ e c		\grg b c~ c b |
	\grg a16 f~ f A		f A f d |
}

pipesDBA = {
	\pipesDAFirstTwoMeas
	\pipesEndTwoMeas
}

pipesDBB = {
	\pipesCAFirstTwoMeas
	\pipesEndTwoMeas
}
