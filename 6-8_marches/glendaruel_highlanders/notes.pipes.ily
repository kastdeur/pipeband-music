% 6/8 Glendaruel Highlendars
% Pipes
\version "2.18.2"
composerPipes = "PM A. Fettes"% Gordon Highlanders
composerPipesAdd = ", pts 3 & 4 PM D. R. MacLennan" % Seaforth Highlanders
composerPipes = \markup { \composerPipes \composerPipesAdd }
arrangerPipes = ""
pipeglobal = {
	\key a \mixolydian
}
% Music
pipesA = {
	e8 |
	\grg a4 \taor a8 \grg a8. [ b16 \grip c8 ] |
	\dble e4 \grip e8 \dblf f4 \grg e8 |
	\dblc c8. [ \grg b16 \grd a8 ] \grg f16 [ A8. f8 ] |
	\dble e4. \gra e8. [ \grg f16 A8 ] | 

	a4 \taor a8 \grg a8. [ b16 \grip c8 ] |
	\dble e4 \grip e8 \dblf f4 \grg e8 |
	\grg f16 [ A8. c8 ] \dble e8. [ d16 b8 ] |
	\grg a4. \wbirl a4 
}

pipesBA = {
	\dble e16 [ d16 ] |
	\dblc c4 \gre a8 \grg c16 [ e8. b8 ] |
	\dblc c4 \gre a8 \wbirl a8. [ \grg c16 e8 ] |
	\grg f4 \birl a8 \grg f16 [ A8. f8 ] |
	\dble e4. \gra e8. [ \grg f16 ]
}
pipesBBA = {
	A8 |
	\hdblc c4 \gre a8 \grg c16 [ e8. b8 ] |
	\dblc c4 \gre a8 \wbirl a8. [ \grg c16 e8 ] |
	\grg f8. [ e16 \grg c8 ] \dble e8. [ d16 b8 ] |
	\grg a4. \wbirl a4
}
pipesBBB = {
	\dblg g8 |
	A8. [ c16 \grG c8 ] \grg c8. [ f16 e8 ] |
	\grg f8. [ b16 \grG b8 ] \grg b8. [ f16 e8 ] |
	\grg f16 [ A8. c8 ] \dble e8. [ d16 b8 ] |
	\grg a4. \wbirl a4
}

pipesC = {
	b8 |
	\grip c4. \dble e8. [ c16 b8 ] |
	\grg a8. [ b16 \grip c8 ] \dble e4 \grg c8 |
	\grip f4. A8. [ g16 f8 ] |
	\dble e4. \gra e8. [ \grg f16 A8 ] | 

	\grip c4. \dble e8. [ c16 b8 ] |
	\grg a8. [ b16 \grip c8 ] \dble e4 \dblg g8 |
	\grA f16 [ A8. c8 ] \dble e8. [ d16 b8 ] |
	\grg a4. \wbirl a4
}

pipesDA = {
	\dblg g8 |
	\dblA A4. \hdblf f8. [ e16 c8 ] |
	\grg a8. [ b16 \grip c8 ] \dble e4 \grg c8 |
	\grip f4. \dble e8. [ d16 c8 ] |
	\grg b4. \taor b4 
}
pipesDBA = {
	\dblg g8 |
	\dblA A4. \hdblf f8. [ e16 \grg c8 ] |
	\grg a8. [ b16 \grip c8 ] \dble e4 \dblg g8 |
	\grA f16 [ A8. c8 ] \dble e8. [ d16 b8 ] |
	\grg a4. \wbirl a4
}
pipesDBB = {
	\dble e16 [ d16 ] |
	\grg c16 [ e8. c8 ] \dbld d8. [ c16 b8 ] |
	\grg a8. [ b16 \grip c8 ] \dble e4 \dblg g8 |
	\grA f16 [ A8. c8 ] \dble e8. [ d16 b8 ] |
	\grg a4. \wbirl a4
}
