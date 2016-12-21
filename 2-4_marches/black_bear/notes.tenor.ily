% 2/4 Black Bear
% Tenor
\version "2.18.2"
composerTenor = "E.T. de Boone, v0.9, 2016"
tenorglobal = {}
% Music
tenorA = \drummode {
	d8 g8 	d4
	|
	d8 g8 	d4
	|
	d8 \triplet { d16 g d} 	g4
	|
	d4^\parenthesize \splitTheFeather		r4
	|
	
	d8 g8	d4
	|
	d8 g8	d4
	|
	d8 d16. g32	d16 g8-> g16
	|
	d8 g8
	d8
}

tenorB = \drummode {
	g8 |
	\repeat unfold 2 {
		d8 g8 d8 g8|
		r16 g8 g16 \triplet { d16 g d } g8 |
	}


	d4 g8. g16 |
	d8 g d4 |
	d8 d g g |
	d4^\parenthesize \splitTheFeather	r4
}
