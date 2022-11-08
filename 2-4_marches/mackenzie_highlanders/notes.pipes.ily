% 2/4 MacKenzie Highlanders
% Pipes
\version "2.18.2"
composerPipes = ""
pipeglobal = {
	\bagpipeKey
}
pipesA = {
	\dblA A8 |
	\dblc c8 [ \gre b16. \grd c32 ] \grg a16. [ b32  \grg c16.  d32 ] |
	\dble e8 [ \grg a8 ] \wbirl a8 [ \dblA A8 ] |
	\hdblc c8 [ \gre b16. \grd c32 ] \grg a16. [ b32  \grg c16.  d32 ] |
	\dble e4 \grip e8 [ \dblA A8 ] | \break

	\hdblc c8 [ \gre b16. \grd c32 ] \grg a16. [ b32  \grg c16.  d32 ] |
	\dble e8 [ \grg a8 ] \wbirl a8 [ \dblg g8 ] |
	\hdblb b8 [ \grg a32 \grd G16. ] \dblg g8 [ \grA b32 \grd G16. ] |
	d4 \dbld d8 
}

pipesB = {
	\dblg g8 |
	\dblA A8 [ c32 \grd a16. ] \grip e8 [ \grg f16. d32 ] |
	\dble e8 [ \grg a8 ] \wbirl a8 [ \dblg g8 ] |
	\dblA A8 [ c32 \grd a16. ] \grip e8 [ \grg f16. d32 ] |
	\dble e4 \gra e8 [ \dblg g8 ] | 
}

pipesBA = {
	\dblA A8 [ c32 \grd a16. ] \grip e8 [ \grg f16. d32 ] |
	\dble e8 [ \grg a8 ] \wbirl a8 [ \dblg g8 ] |
	\hdblb b8 [ \grg a32 \grd G16. ] \dblg g8 [ \grA b32 \grd G16. ] |
	d4 \dbld d8 
}

pipesBB = {
	\dblA A8 [ g32 f16. ] \dblg g8 [ f32 e16. ] |
	\dblf f8 [ e32 d16. ] \dble e8 [ f32 g16. ] |
	\hdblb b8 [ \grg a32 \grd G16. ] \dblg g8 [ b32 \grd G16. ] |
	d4 \dbld d8 
}
