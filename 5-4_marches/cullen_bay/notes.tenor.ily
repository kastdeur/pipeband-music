% 5/4 Cullen Bay
% Tenor
\version "2.18.2"
composerTenor = ""
tenorglobal = {}
tenorAA = \drummode {
	d8-> g d g d-> g \flourish d4 \flourish d4 |
	d8. g16 d8-> g8-> r8 g8 d4 d4 |
	d8-> g d g d-> g d8.-> g16-> r8 g8-> |
	r4 d4 d8 g8 d4 d4 |
}
tenorAB = \drummode {
	\flourish { d4 g4 d4 g4 d4 } |
	d8. g16 d8-> g8-> r8 g8 d4 d4 |
	\flourish { d4 g4 } d8-> g8 d8.-> g16-> r8 g8->
	r4 d4 \scoop { d8 g8 d4 } d4 |
}
