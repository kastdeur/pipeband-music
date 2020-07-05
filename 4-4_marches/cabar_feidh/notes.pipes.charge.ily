% 4/4 Cabar Feidh (Charge)
% Pipes
\version "2.18.2"
composerPipesCharge = ""
meterCharge = "The Charge"
titleCharge = "Cabar Feidh"
instrumentPipesCharge = "Pipes"
pipeglobal = {
	\key a \mixolydian
}
% Music
pipesChargeA = {
	e8 |
	\dblg g8. [ A16 ] \tuplet 3/2 { g8 [ f8 e8 ] } \dblg g4 \thrwd d8. [ e16 ] |
	\dblg g4 \thrwd d8 [ g8 ] \hdblb b8. [ a16 ] \grg G8. [ \grd b16 ] |
	\gbirl a4 \dblA A8 [ g8 ] \dblA A4 \hdble e8. [ f16 ] |
	\dblA A4 \hdble e8 [ A8 ] \hdblc c8. [ b16 ] \grg a8. [ \grd b16 ] | 

	\dblg g8. [ A16 ] \tuplet 3/2 { g8 [ f8 e8 ] } \dblg g4 \thrwd d8. [ e16 ] |
	\dblg g4 \thrwd d8 [ g8 ] \hdblb b8. [ a16 ] \grg G8. [ \grd b16 ] |
	\grg a8. [ b16 ] \grg c8. [ d16 ] \grg e8. [ f16 ] \dblg g8. [ f16 ] |
	\grg e16 [ A8. ] \hdble e8 [ A8 ] \hdblc c8. [ b16 ] \grg a8
}

pipesChargeB = {
	\dblg g8 |
	\hdblb b8. [ \gre G16 ] \hdbld d8. [ \gre G16 ] \dblb b8. [ \gre G16 ] \hdbld d8. [ \gre G16 ] |
	\hdblb b8. [ \gre G16 ] \hdbld d8. [ \gre G16 ] \dblb b8. [ a16 ] \grg G8. [ \grd b16 ] |
	\grg a8. [ \grd c16 ] \dble e8. [ a16 ] \dblf f8. [ a16 ] \dble e8. [ a16 ] |
	\dblc c8 [ \gre a8 ] \dble e8. [ a16 ] \dblc c8. [ b16 ] \grg a8. [ \dblg g16 ] | 

	\hdblb b8. [ \gre G16 ] \hdbld d8. [ \gre G16 ] \dblb b8. [ \gre G16 ] \hdbld d8. [ \gre G16 ] |
	\hdblb b8. [ \gre G16 ] \hdbld d8. [ \gre G16 ] \dblb b8. [ a16 ] \grg G8. [ \grd b16 ] |
	\grg a8. [ b16 ] c8. [ d16 ] \grg e8. [ f16 ] \dblg g8. [ f16 ] |
	\grg e16 [ A8. ] \hdble e8 [ A8 ] \hdblc c8. [ b16 ] \grg a8
}
