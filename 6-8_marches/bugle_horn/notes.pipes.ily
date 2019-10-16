% 6/8 Bugle Horn
% Pipes
\version "2.18.2"
composerPipes = ""
arrangerPipes = ""
pipeglobal = {
	\key d \major
}
% Music
pipesA = {
	a8 |
	\thrwd d8. [ f16 \grg a8 ] \thrwd d4 \gre a8 |
	\thrwd d8. [ f16 \grg a8 ] \thrwd d4 f8 |
	\dblA A4 f8 \thrwd d4 f8 |
	\grg e4 \grip e8 \dble e4 a8 | 

	\thrwd d8. [ f16 \grg a8 ] \thrwd d4 \gre a8 |
	\thrwd d8. [ f16 \grg a8 ] \thrwd d4 f8 |
	\dblA A4 f8 \grg e4 \grip e8 |
	\dblf f4 \dbld d8 \grg d4
}

pipesBA = {
	\grg e8 |
	\grg f4. \dblg g8 [ e8 g8 ] |
	\dblA A4. \hdblf f4 A8 |
	\grg A8. [ g16 f8 ] \dblf f8. [ e16 d8 ] |
	\grg f4 \grip e8 | 
}
pipesBBA = {
	\dble e8. [ d16 e8 ] |
	\grg f4. \dblg g8 [ e8 g8 ] |
	\dblA A4. \hdblf f4 A8 |
	\grg A8. [ g16 f8 ] \grg e4 \grip e8 |
	\dblf f4 \hdbld d8 \grg d4
}
pipesBBB = {
	\dble e4 a8 |
	\thrwd d8. [ f16 \grg a8 ] \thrwd d4 \gre a8 |
	\thrwd d8. [ f16 \grg a8 ] \thrwd d4 f8 |
	\dblA A4 f8 \grg e4 \grip e8 |
	\dblf f4 \hdbld d8 \grg d4
}
