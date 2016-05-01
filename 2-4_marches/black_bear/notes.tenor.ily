% 2/4 Black Bear
% Tenor
\version "2.18.2"
composerTenor = "E.T. de Boone, v0.6, 2016"
tenorglobal = {}
% Music
tenorApiece = \drummode {
	d8 g8
	\triplet { d16 g d } g8
	|
	d8 g8
	\triplet { d16 g d } g8
	|
	d8 d8
	g4
	|
	d4^\splitTheFeather
	r8 \triplet { g16 d g }
	|
	
	d8 g8
	\triplet { d16 g d } g8
	|
	d8 g8
	\triplet { d16 g d } g8
	|
	d8 g16. g32
	d16. g8 d32
	|
	d8 d8
	g8
}
tenorA = \drummode {
	g8 |
	\tenorApiece
}

tenorBA = \drummode {
	g8 |
	d16. g32 d16. d32
	g4
	|
	r4
	d32 g16. g32 d16.
	|
	d16. g32 d16. d32
	g4
	|
	r4
	d32 g16. g32 d16.
	|

	d32 g16. g32 d16.
	d32 g16. g32 d16.
	|
	g32 d16. g32 d16.
	g32 d16. g32 d16.
	|
	d16. g32 d16. d32
	g16. d32 g16. g32
	|
	d4
	d16. g32 g16. d32
}
tenorBB = \drummode {
	\tenorApiece
}
