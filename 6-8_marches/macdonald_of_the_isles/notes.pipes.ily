% 6/8 MacDonald of the Isles
% Pipes
\version "2.18.2"
composerPipes = ""
arrangerPipes = ""
pipeglobal = {
	\bagpipeKey
}

% Music
pipesA = {
	A8. f16 |
	\grg e4 \taor a8	\dblf f8.[ e16 \whslurd d8] |
	\grg e4 \taor a8	\dblA A4 f8 |
	\grg e4 \taor a8	\dblf f8.[ e16 \whslurd d8] |
	\grg d8. \grd G16 \gre G8	\hdblg g4

	f8 |
	\grg e4 \taor a8	\dblf f8.[ e16 \whslurd d8] |
	\grg e4 \taor a8	\dblA A8. e16 f8 |
	\dblg g8. A16 g8	\hdblf f4 e8 |
	\dbld d8. b16 \grd G8
}

pipesABA = {
	\dblG G8. A8 f16
}
pipesABB = {
	\dblG G4
}

pipesB = {
	b8 |
	\gbirl a4 A8	\grg A8. e16 f8 |
	\grg A8. e16 A8	\grg A8. e16 c8 |
	\gbirl a4 A8	\grg A8. e16 f8 |
	\dblg g8. f16 e8	\dbld d8. c16

	b8 |
	\gbirl a4 A8	\grg A8. e16 f8 |
	\grg A8. e16 A8	\grg A8. e16 d8 |
	\dblg g8. A16 g8	\hdblf f4 e8 |
	\dbld d8. b16 \grd G8
}
pipesBBA = {
	\dblG G4 b8
}
pipesBBB = {
	\dblG G8.
}


pipesC = {
	A8 f16 |
	\grg e4 \taor a8	\grg f4 \taor a8 |
	\gre e4 \taor a8	A4 \taor a8 |
	\grg e4 \taor a8	\grg f4 \taor a8 |
	\grg b8. \grd G16 \gre G8	\hdblg g4

	f8 |
	\grg e4 \taor a8	\grg f4 \taor a8 |
	\gre e4 \taor a8	\dblf f8.[ e16 \whslurd d8] |
	\dblg g8. A16 g8	\hdblf f8[ e8 \hslurg g8] |
	\hdbld d8. b16 \gre G8
}
pipesCBA = {
	\dblG G8. A8 g16
}
pipesCBB = {
	\dblG G4
}

pipesD = {
	\grd b8 |
	\gbirl a4 A8	\grg A8 \tuplet 3/2 { e8 f g } |
	A4 \grip A8	\grg A8. G16 \grd b8 |
	\gbirl a4 A8	\grg A8. e16 f8 |
	\dblg g8[ G8 \whslurd d8]	\dblb b8. \grg a16

	\grd G8 |
	\gbirl a4 A8	\grg A8 \tuplet 3/2 { e8 f g } |
	A4 \grip A8	\grg A8. e16 f8 |
	\dblg g4 \taor a8	\grg e4 \taor a8 |
	\dbld d8. b16 \grd G8	\dblG G4
}