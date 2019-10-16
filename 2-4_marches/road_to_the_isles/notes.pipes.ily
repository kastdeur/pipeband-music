% 2/4 Road to the Isles
% Pipes
\version "2.18.2"
composerPipes = "P.M. J. MacLellan" %John, DCM
arrangerPipes = ""
pipeglobal = {
	\key d \major
}
% Music
pipesAA = {
	\grg a16. d32 |
	\dblf f4		A16. f32 \grg e16. f32 |
	\thrwd d16. e32 \grg d16. c32	\dblb b8 \grg d16 c16 |
	\grg b32 \grd G16. \grg b16. c32	\thrwd d16. e32 \grg f32 A16. |
	\hdble e4	\gra e8
}
pipesAB = {
	\grg a16. d32 |
	\dblf f4		A16. f32 \grg e16. f32 |
	\thrwd d16. e32 \grg d16. c32	\dblb b8 [ \dblg g8 ] |
	\grA f32 [ A16. \hdblf f16. d32 ]	\grg a16. [ \grd c32 \dble e16. c32 ] |
	\thrwd d4	\dbld d8
}
pipesBA = {
	\grg f16. g32 |
	\dblA A16. [ a32 \wbirl a8 ]	\dblf f16. [ a32 \wbirl a8 ] |
	\thrwd d16. e32 \grg d16. c32	\dblb b8 \grg d16 c16 |
	\grg b32 \grd G16. \grg b16. c32	\thrwd d16. e32 \grg f32 A16. |
	\hdble e4	\gra e8

}
pipesBBA = {
	\grg f16. g32 |
	\dblA A16. [ a32 \wbirl a8 ]	\dblf f16. [ a32 \wbirl a8 ] |
	\thrwd d16. e32 \grg d16. c32	\dblb b8 [ \dblg g8 ] |
	\grA f32 [ A16. \hdblf f16. d32 ]	\grg a16. [ \grd c32 \dble e16. c32 ] |
	\thrwd d4	\dbld d8
}
pipesBBB = {
	\pipesAB
}
