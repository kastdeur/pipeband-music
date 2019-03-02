% 2/4 The Jolly Beggarman
% Pipes
\version "2.18.2"
composerPipes = ""
arrangerPipes = ""
pipeglobal = {
	\key a \major
}
% Music
pipesA = {
	e8 |
	\grg a16. [ \grd a32 \gre a16. \grd b32 ] \grg a16. [ b32 \grg c16. d32 ] |
	\grg e16. [ f32 \grg e16. c32 ] \thrwd d8 [ \grg c16. d32 ] |
	\grg e16. [ a32 \gbirl a8 ] \grg a16. [ b32 \grg c32 \grd a16. ] |
	\grg b16. [ \grd G32 \gre G16. a32 ] \dblb b8 [ e8 ] | 

	\grg a16. [ \grd a32 \gre a16. \grd b32 ] \grg a16. [ b32 \grg c16. d32 ] |
	\grg e16. [ f32 \grg e16. c32 ] \thrwd d8 [ \grg c16. d32 ] |
	\grg e16. [ A32 \grg A16. g32 ] A16. [ f32 \dble e16. d32 ] |
	\dblc c8 [ \gre a8 ] \wbirl a8
}

pipesBA = {
	\grg e16. [ f32 ] |
	\dblg g8 [ \slurf g16. A32 ] g16. [ f32 \grg e16. f32 ] |
	\grA g16. [ f32 \grg e16. c32 ] \thrwd d8 [ \grg c16. d32 ] |
	\grg e16. [ a32 \gbirl a8 ] \grg a16. [ b32 \grg c32 \grd a16. ] |
	\grg b16. [ \grd G32 \gre G16. a32 ] \dblb b8
}
pipesBBA = {
	e16. f32 | 
	\dblg g8 [ \slurf g16. A32 ] g16. [ f32 \grg e16. f32 ] |
	\grA g16. [ f32 \grg e16. c32 ] \thrwd d8 [ \grg c16. d32 ] |
	\grg e16. [ A32 \grg A16. g32 ] A16. [ f32 \dble e16. d32 ] |
	\dblc c8 [ \gre a8 ] \wbirl a8
}
pipesBBB = {
	e8 |
	\grg a16. [ \grd a32 \gre a16. \grd b32 ] \grg a16. [ b32 \grg c16. d32 ] |
	\grg e16. [ f32 \grg e16. c32 ] \thrwd d8 [ \grg c16. d32 ] |
	\grg e16. [ A32 \grg A16. g32 ] A16. [ f32 \dble e16. d32 ] |
	\dblc c8 [ \gre a8 ] \wbirl a8
}
