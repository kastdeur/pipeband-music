% 4/4 The Hills of Alva
% Pipes
\version "2.18.2"
composerPipes = "T. Muirhead"
arrangerPipes = ""
pipeglobal = {
	\key d \major
}
% Music
pipesA = {
	\repeat unfold 2 {
		\gre a8 |
		\grg f4 \dblf f8 [ A8 ] \slurf g4 \grA e8. [ f16 ] |
		\dblg g8 [ e8 ] \grg a8 [ e8 ] \thrwd d4 \gre a4 |
	}
	\alternative {
		{
			\grg b16 [ d8. ] \gre G8 [ \grd b8 ] \gre a4 \dblA A4 |
			\slurf g8. [ f16 ] \dble e8 [ d8 ] \dbld d8. [ c16 ] \dblb b8
		}
		{
			\grg b8. [ d16 ] \dblg g8 [ b8 ] \grg a8 [ A8 ] \grg A8. [ g16 ] |
			\grA f8 [ e8 ] A8 [ a8 ] \thrwd d4 \dbld d8
		}
	}
}
pipesB = {
	a8|
	\repeat unfold 2 {
		A4 \grip A8. [ g16 ] \grA f8 [ d8 ] \gre a4 |
		\grg a8. [ b16 ] \grg d8 [ f8 ] \dble e4 \birl a4 |
	}
	\alternative {
		{
			\grA g4 \grip g8. [ \grA f16 ] \dble e8 [ c8 ] \grg a4 |
			\grA g8. [ f16 ] \dble e8 [ d8 ] \dbld d8. [ c16 ] \dblb b8 [ \gre a8 ] |
		}
		{
			\grg b8. [ d16 ] \dblg g8 [ b8 ] \grg a8 [ A8 ] \grg A8. [ g16 ] |
			\grA f8 [ e8 ] A8 [ a8 ] \thrwd d4 \dbld d8
		}
	}
}
pipesC = {
	f8 |
	\repeat unfold 2 {
		\grg a8. [ b16 ] \grG a4 \grg d8. [ e16 ] \thrwd d4 |
		\grg f8. [ g16 ] \hdblf f8 [ e8 ] \thrwd d4 \grg a4 |
	}
	\alternative {
		{
			\grg b8. [ d16 ] \dblg g4 \grg a8. [ d16 ] \dblf f4 |
			\grA g8. [ f16 ] \dble e8 [ d8 ] \dbld d8. [ c16 ] \dblb b8 [ \gre a8 ] |
		}
		{
			\grg b8. [ d16 ] \dblg g8 [ b8 ] \grg a8 [ A8 ] \grg A8. [ g16 ] |
			\grA f8 [ e8 ] A8 [ a8 ] \thrwd d4 \dbld d8
		}
	}
}
pipesD = {
	g8 |
	\repeat unfold 2 {
		\dblA A8. [ f16 ] \dblg g8 [ e8 ] \thrwd d8 [ f8 ] \grg a4 |
		\grg a8. [ b16 ] \dble e8 [ d8 ] \dblb b4 \gre a4 |
	}
	\alternative {
		{
			\dblg g8. [ f16 ] \dble e8 [ a8 ] \dblc c8 [ e8 ] \dblA A4 |
			g8. [ f16 ] \dble e8 [ d8 ] \dbld d8. [ c16 ] \dblb b8 [ \gre a8 ] |
		}
		{
			\grg b8. [ d16 ] \dblg g8 [ b8 ] \grg a8 [ A8 ] \grg A8. [ g16 ] |
			\grA f8 [ e8 ] A8 [ a8 ] \thrwd d4 \dbld d8
		}
	}
}
