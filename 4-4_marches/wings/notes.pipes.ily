% 4/4 Wings
% Pipes
\version "2.18.2"
composerPipes = ""
arrangerPipes = ""
pipeglobal = {
	\key a \mixolydian
}
% Music
pipesAA = {
	a8 e8 |
	\grg a4 \taor a8 [ b8 ] \grip c4~ c8 [ e8 ] |
	\grg f8. [ e16 ] \grg f8 [ A8 ] e4 \dblc c8 [ e8 ] |
	\grg f8. [ g16 ] A8 [ f8 ] \dble e16 [ c8. ] \grg b8 [ a8 ] |
	\grg b8. [ c16 ] \thrwd d8 [ c8 ] \grg b8 [ e8 ] \grg d8 [ b8 ] | 
}
pipesAB = {
	\grg a4 \taor a8 [ b8 ] \grip c4~ c8 [ e8 ] |
	\grg f8. [ e16 ] \grg f8 [ A8 ] e4 \dblc c8 [ e8 ] |
	\grg f8. [ g16 ] A8 [ f8 ] \dble e16 [ c8. ] \grg b8. [ c16 ] |
	\grg a2 \wbirl a4~
}

pipesBA = {
	a8 [ e8 ] |
	A4 \grg A4 \grip A8 [ g8 ] \hdblf f8 [ e8 ] |
	\grg f8. [ e16 ] \grg f8 [ A8 ] \hdblf f8 [ e8 ] \dblc c8 [ e8 ] |
	\grg f8. [ g16 ] A8 [ f8 ] \dble e16 [ c8. ] \grg b8 [ a8 ] |
	\grg b8. [ c16 ] \thrwd d8. [ c16 ] \grg b8 [ e8 ] \grg d8 [ b8 ] | 
}
