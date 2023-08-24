% 2/2 Piper of Drummond
% Tenor
\version "2.18.2"
composerTenor = "v0.1"
arrangerTenor = ""
tenorglobal = {}
% Music
tenorAA = \drummode {
	d4 g8. 16 d2 |
	d4.. d16	g8. d16 g4 |
	d4 g8. 16	d2 |
	d8. g16 d4	r4 \triplet { g8 d8 g8 } |
}
tenorAB = \drummode {
	d4 g8. 16 d2 |
	d4.. d16	g8. d16 g4 |
	d4 g8. 16	d2 |
	d4.. g16 d2 |
}
tenorBA = \drummode {
	d2	r4 \triplet { d8 g d } |
	g4.. d16	g2 |
	d4 g d g |
	d4.. g16-> d2 |
}
tenorBB = \drummode {
	d4 g8.\< g16	d8. d16 g4 | 
	d2\!	\triplet { d8 g d } g4 |
	d2	g2 |
	d8. g16 d4	g2 |
}
