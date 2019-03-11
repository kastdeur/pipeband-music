% 2/4 Drunken Piper
% Pipes
\version "2.18.2"
composerPipes = "A. MacLeod"% Alexander MacLeod (1862)
arrangerPipes = ""
pipeglobal = {
	\key a \major
}
% Music
pipesAA = {
	e8 |
	\grg a16. [ \grd a32 \gre a16. b32 ] \grg e8. [ f16 ] |
	\grg e16. [ d32 \grg b32 d16. ] \dble e8 [ g8 ] |
	\grA G16. [ \grd G32 \gre G16. b32 ] \thrwd d8. [ e16 ] |
	\dbld d16. [ b32 \grg G16. b32 ] \grg d8
}
pipesAB = {
	\tag #'upbeat { e8 | }
	\grg a16. [ \grd a32 \gre a16. b32 ] \grg e8. [ f16 ] |
	\grg e16. [ d32 \grg b32 d16. ] \dble e8 [ A8 ] |
	\grf g8 [ e8 ] \grg e16. [ f32 \grg e16. d32 ] |
	\dblb b8 [ \gre a8 ] \wbirl a8
}
pipesBA = {
	g8 |
	A4 \hdble e8 [ A8 ] |
	e8 [ \grip e16. f32 ] g8 [ A8 ] |
	G16. [ \grd G32 \gre G16. b32 ] \thrwd d8. [ e16 ] |
	\dbld d16. [ b32 \grg G16. b32 ] \grg d8
}
pipesBBA = {
	e8 |
	A4 \hdble e8 [ A8 ] |
	e8 [ \grip e16. f32 ] g8 [ A8 ] |
	\grf g8 [ e8 ] \grg e16. [ f32 \dble e16. d32 ] |
	\dblb b8 [ \gre a8 ] \wbirl a8
}
pipesBBB = {
	\pipesAB
}
pipesCA = {
	\dble e8 |
	\grg a16. [ \grd a32 \gre a16. b32 ] \dble e16. [ a32 \grg c32 \grd a16. ] |
	\grg e16. [ f32 \dble e16. d32 ] \grg b32 [ g16. \hdbld d16. b32 ] |
	\grg G16. [ \grd G32 \gre G16. b32 ] \dbld d16. [ G32 \grg b32 \grd G16. ] |
	\grg b16. [ d32 \grA g16. d32 ] \grg b32 [ d16. \grg c32 \gre a16. ] |
}
pipesCB = {
	\grg a16. [ \grd a32 \gre a16. b32 ] \dble e16. [ a32 \grg c32 \grd a16. ] |
	\grg e16. [ f32 \dble e16. d32 ] \dble e8 [ A8 ] |
	\grf g8 [ \grA e32 A16. ] \grg e16. [ f32 \dble e16. d32 ] |
	\dblb b8 [ \gre a8 ] \wbirl a8
}
pipesDA = {
	\dblg g8 |
	A16. [ e32 \gra e16. A32 ] g16. [ e32 \dbld d16. b32 ] |
	\grip e8 [ \grg f16. d32 ] \dble e8 [ \dblg g8 ] |
	\grA G16. [ \grd G32 \gre G16. b32 ] \thrwd d8. [ e16 ] |
	\dbld d16. [ b32 \grg G16. b32 ] \thrwd d8
}
pipesDBA = {
	\tag #'upbeat { 	g8 | }
	A16. [ e32 ] \gra e16. [ A32 ] g16. [ e32 ] \dbld d16. [ b32 ] |
	\grip e8 [ \grg f16. d32 ] \dble e8 [ A8 ] |
	\grf g8 [ \grA e32 A16. ] \grg e16. [ f32 \dble e16. d32 ] |
	\dblb b8 [ \gre a8 ] \wbirl a8
}
pipesDBB = {
	\tag #'upbeat { e8 | }
	\pipesCB
}
