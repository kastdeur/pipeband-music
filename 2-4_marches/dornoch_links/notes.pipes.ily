% 2/4 The Dornoch Links
% Pipes
\version "2.22.2"
composerPipes = ""
arrangerPipes = "1936"
pipeglobal = {
	%\key a \major
	\key a \mixolydian
}
% Music
pipesA = {
	A16. f32 |
	\dble e8.[ a16]	\dblc c8[ \gre b16 \grd c16] |
	\dble e8[ a8]	\wbirl a8[ A16. f32] |
	\dble e8.[ a16]	\dblc c8[ \gre b16 \grd c16] |
	\dblf f8[ b8]	\grip b8[

	\grg c16 d16] |
	\grg e16.[ f32 \grg e16. d32]  \dblc c8[ \grg b16 \grd a16] |
	\dblc c8[ e8]	\dblA A8.[ c16] |
	\thrwd d8[ \dblg g8]  \hslurb b8[ \dble e16 d16] |
	\dblc c8[ \gre a8]    \grip a8
}
pipesB = {
	\hdblg g8 |
	\hdblA A4   \hdble e8[ \grg f16 g] |
	\hdblA A8[ e16 d]   \dblc c8[ \grg b16 \grd a16] |
	\hdblA A4   e16.[ f32 \grg e16. c32] |
	\thrwd d8[ \grg b8]   \taor b8[
	
	\hdblg g8] |
	\hdblA A4   \hdble e8[ \grg f16 g] |
	\tag #'voltaI { 
	    \hdblA A8[ e16 d]   \dblc c8[ \grg b16 \grd a16]
	} |
	\tag #'voltaII {
	    A16.[ e32 \grg f16. d32]  \dblc c8[ \grg b16 \grd a16]
	} |
	\thrwd d8[ \dblg g8]  \hslurb b8[ \dble e16 d16] |
	\dblc c8[ \gre a8]    \grip a8
}
