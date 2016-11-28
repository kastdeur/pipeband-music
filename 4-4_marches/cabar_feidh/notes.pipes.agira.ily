% 4/4 Cabar Feidh (Agira Version)
% Pipes
\version "2.18.2"
composerPipesAgira = "Cpl 'Dewey' Uren"
titleAgira = "Cabar Feidh (Agira Version)"
meterAgira = "March"
instrumentPipesAgira = "Pipes"
pipeglobal = {
	\bagpipeKey
}
% Music
pipesAgiraA = {
	e8 |
	\dblg g8. [ A16 ] \slurf g8 [ e8 ] \dblg g4 \thrwd d8. [ e16 ] |
	\dblg g4 \thrwd d8 [ c8 ] \dblb b8. [ a16 ] \grg G8 [ \grd b8 ] |
	\grg a8 [ A8 ] \grg A8 [ g8 ] \dblA A4 e8 [ f16 g16 ] |
	\dblA A4 \hdble e8. [ d16 ] \dblc c8 [ \gre a8 ] \wbirl a8 [ \grd b8 ] | 

	\dblg g8. [ A16 ] \slurf g8 [ e8 ] \dblg g4 \thrwd d8. [ e16 ] |
	\dblg g4 \thrwd d8 [ c8 ] \dblb b8. [ a16 ] \grg G8 [ \grd b8 ] |
	\grg a8. [ b16 ] \grip c8 [ \thrwd d8 ] \grg e8. [ f16 ] \dblg g8 [ e8 ] |
	\dblA A4 \hdble e8. [ d16 ] \dblc c8 [ \gre a8 ] \wbirl a8   
}

pipesAgiraB = {
	\dblg g8 |
	\dblc b8 [ \gre G8 ] \thrwd d8 [ \gre G8 ] \dblc b8 [ \gre G8 ] \whslurd d8. [ b16 ] |
	\grg G8 [ \grd b8 ] \thrwd d8 [ c8 ] \dblb b8. [ a16 ] \grg G8 [ \grd b8 ] |
	\grg a8. [ \grd c16 ] \dble e8 [ a8 ] \dblc c8 [ \gre a8 ] \dble e8. [ c16 ] |
	\grg a8. [ \grd c16 ] \dble e8. [ d16 ] \dblc c8. [ b16 ] \grG a8 [ \dblg g8 ] | 

	|
	\dblc b8 [ \gre G8 ] \thrwd d8 [ \gre G8 ] \dblc b8 [ \gre G8 ] \whslurd d8 [ G8 ] |
	\grg b8 [ e8 ] \thrwd d8 [ c8 ] \dblb b8. [ a16 ] \grg G8 [ \grd b8 ] |
	\grg a8. [ b16 ] \grip c8 [ \thrwd d8 ] \grg e8. [ f16 ] \dblg g8 [ e8 ] |
	\dblA A4 \hdble e8. [ d16 ] \dblc c8 [ \gre a8 ] \wbirl a8   
}

pipesAgiraC = {
	e8 |
	\grg \tuplet 3/2 { c8 [ \grip e8 f8 ] } \dblg g8 [ c8 ] \dble e8 [ c8 ] \dblg g8. [ e16 ] |
	\grg \tuplet 3/2 { c8 [ \grip e8 f8 ] } \dblg g8 [ f8 ] \dble e8. [ d16 ] \dblc c8 [ e8 ] |
	\thrwd d16 [ e16 f16 g16 ] \dblA A8 [ d8 ] \dblf f8 [ d8 ] \dblA A8. [ f16 ] |
	\thrwd d16 [ e16 f16 g16 ] \grg A8 [ g16 A16 ] g16 [ f16 e16 d16 ] c16 [ f16 e16 d16 ] | 

	\grg c8 [ \grip e16 f16 ] g16 [ c16 \pelc c8 ] e16 [ c16 \pelc c8 ] g16 [ c16 \pelc c8 ] |
	A16 [ c16 \pelc c8 ] \grip e8. [ f16 ] \dblg g8. [ e16 ] \dblc c8 [ e8 ] |
	A16 [ g16 f16 A16 ] g16 [ f16 \grg e16 g16 ] f16 [ e16 \grg d16 f16 ] \grg e16 [ d16 \grg c16 e16 ] |
	\dble e8 [ c8 ] \dblA A8. [ e16 ] \dblc c8 [ \gre a8 ] \wbirl a8   
}

pipesAgiraD = {
	\dblg g8 |
	\grA G8. [ \grd G16 ] \gre G8 [ \grd b8 ] \grg G8. [ \grd G16 ] \gre G8 [ \grd b8 ] |
	\grg G16 [ a16 b16 c16 ] \thrwd d8 [ c8 ] \dblb b8. [ a16 ] \grg G8 [ \grd b8 ] |
	\grg a8. [ \grd a16 ] \gre a8 [ \grd b8 ] \grg a8. [ \grd a16 ] \gre a8 [ \grd b8 ] |
	\grg a16 [ b16 \grg c16 d16 ] \grg e16 [ f16 \grg e16 f16 ] \grg e16 [ d16 \grg c16 b16 ] \grg a8 [ \dblg g8 ] | 

	\grA G8. [ \grd G16 ] \gre G8 [ \grd b8 ] \grg G8. [ \grd G16 ] \gre G8 [ \grd b8 ] |
	\grg G16 [ a16 b16 c16 ] \thrwd d8 [ c8 ] \dblb b8. [ a16 ] \grg G8 [ \grd b8 ] |
	\grg a8. [ b16 ] \grip c8 [ \thrwd d8 ] \grg e8. [ f16 ] \dblg g8 [ e8 ] |
	\dblA A4 \hdble e8. [ d16 ] \dblc c8 [ \gre a8 ] \wbirl a8  
}
