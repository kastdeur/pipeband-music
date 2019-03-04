% 4/4 The Accordion Man
% Pipes
\version "2.18.2"
composerPipes = ""
arrangerPipes = "PM F.J. de Boone"
pipeglobal = {
	\bagpipeKey
}
% Music
pipesA = {
	\grg e8 \bar "|"
	\grg f4 \grg e8 [ d8 ] \dblg g4 \grA f8 [ e8 ] \bar "|"
	\grg d8 [ f8~ ] f8 [ d8 ] \grg a4~ a8 [ \wbirl a8 ] \bar "|"
	\grg b8 [ \grd G8~ ] G8 [ \grd b8 ] \grg a8 [ \thrwd d8 ] \grg f8 [ A8 ] \bar "|"
	\grf g8 [ \grA f8~ ] f8 [ d8 ] \dble e4 \grg a8 [ d8 ] \bar "|" \break

	\grg f4 \grg e8 [ d8 ] \dblg g4 \grA f8 [ e8 ] \bar "|"
	\grg d8 [ f8~ ] f8 [ d8 ] \grg a4~ a8 [ \wbirl a8 ] \bar "|"
	\grg b8 [ e8~ ] e8 [ d8 ] \grg c8 [ \gre a8~ ] a8 [ e8 ] \bar "|"
	\thrwd d4~ d4 \dbld d4~ d8
}
pipesB = {
	a8
	\grg d8 [ f8~ ] f8 [ A8 ] \grf g4 \grA f8 [ e8 ] \bar "|"
	\grg d8 [ f8~ ] f8 [ d8 ] \grg a4~ a8 [ \wbirl a8 ] \bar "|"
	\grg b8 [ g8~ ] g8 [ f8 ] \dble e4 \thrwd d4 \bar "|"
	\grg c8 [ \gre a8~ ] a8 [ \wbirl a8 ] A8. [ g16 ] \grA f8 [ e8 ] \bar "|" \break

	\grg d8 [ f8~ ] f8 [ A8 ] \grf g4 \grA f8 [ e8 ] \bar "|"
	\grg d8 [ f8~ ] f8 [ d8 ] \grg a4~ a8 [ \wbirl a8 ] \bar "|"
	\grg b8 [ e8~ ] e8 [ d8 ] \grg c8 [ \gre a8~ ] a8 [ e8 ] \bar "|"
	\thrwd d4~ d4 \dbld d4~ d8
}
