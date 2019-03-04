% 2/4 The Barren Rocks of Aden
% Pipes
\version "2.18.2"
composerPipes = "A. MacKellar, 78th Seaforth Highlanders"
arrangerPipes = ""
pipeglobal = {
	\bagpipeKey
	}
% Music
pipesA = {
	\grg e8 |
	\grg f8. [ g16 ] \hdblf f8. [ e16 ] |
	\thrwd d8 [ \grg f8 ] \birl a8 [ \thrwd d8 ] |
	\dblc c8 [ e8 ] \birl a8. [ e16 ] |
	\grg f8 [ \birl a8 ] \thrwd d8. [ e16 ] |

	\grg f8. [ g16 ] \hdblf f8. [ e16 ] |
	\thrwd d8 [ \grg f8 ] \birl a8 [ \thrwd d8 ] |
	\dblc c8 [ e8 ] \birl a8 [ \grg f16. e32 ] |
	\thrwd d4 \dbld d8
}

pipesB = {
	\dblg g8 |
	\dblA A8. [ f16 ] \thrwd d8. [ f16 ] |
	\dble e8 [ \grg f8 ] \birl a8 [ \grg e16 f16 ] |
	\dblg g8. [ e16 ] \dblc c8 [ a8 ] |
	\thrwd d8 [ f8 ] \wbirl a8 [ \dblg g8 ] |

	\dblA A8. [ f16 ] \thrwd d8. [ f16 ] |
	\grg e8 [ \grg f8 ] \birl a8 [ \grg e16 f16 ] |
	\dblg g8. [ e16 ] \dblc c8 [ \gre a8 ] |
	\thrwd d4 \dbld d8
}

pipesC = {
	\dblg g8 |
	A16. [ f32 \grg d32 f16. ] \grg f32 [ A16. d32 f16. ] |
	\dble e8 [ f8 ] \birl a8 [ \grg e16 f16 ] |
	\grA g16. [ e32 \grg c32 e16. ] \grg e32 [ A16. c32 e16. ] |
	\thrwd d8 [ f8 ] \birl a8 [ \dblg g8 ] |

	A16. [ f32 \grg d32 f16. ] \grg f32 [ A16. d32 f16. ] |
	\dble e8 [ f8 ] \birl a8 [ \grg e16 f16 ] |
	\grA g16. [ e32 \grg c32 e16. ] \grg e32 [ A16. c32 e16. ] |
	\thrwd d4 \dbld d8
}

pipesD = {
	\dblg g8 |
	A16. [ f32 d16. f32 ] \grg a16. [ f32 \grg d32 f16. ] |
	A16. [ f32 d16. f32 ] \grg a16. [ f32 \grg d32 f16. ] |
	\grA g16. [ e32 \grg c32 \grd e16. ] \grg a16. [ e32 \grg c32 e16. ] |
	\grA g16. [ e32 \grg c32 \grd e16. ] \grg a16. [ e32 \grg c32 e16. ] |

	A16. [ f32 d16. f32 ] \grg a16. [ f32 \grg d32 f16. ] |
	A16. [ f32 d16. f32 ] \grg a16. [ f32 \grg d32 f16. ] |
	\grA g16. [ e32 \grg c32 \grd e16. ] \grg a16. [ e32 \grg c32 A16. ] |
	\thrwd d4 \dbld d8
}
