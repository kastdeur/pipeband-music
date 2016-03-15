% 2/4 Black Bear
% Tenor
\version "2.18.2"
composerTenor = "F.J. de Boone, v0.5, 2016"
tenorglobal = {}
% Music
tenorApiece = \drummode {
	r4
	d16. g32 d16. g32
	|
	r4
	d16. g32 d16. g32
	|
	r2
	|
	d32 g16. d32 g16. 
	r4
	|
	
	r4 
	d16. g32 d16. g32
	|
	r4 
	d16. g32 d16. g32
	|
	r4 
	d16. g32 d16. g32
	|
	r4 r8
}
tenorA = \drummode {
	r8 |
	\tenorApiece
}

tenorBA = \drummode {
	d8 |
	g16. g32 d16. d32
	r4
	|
	r4
	d32 g16. g32 d16.
	|
	d16. g32 d16. d32
	r4
	|
	r4
	d32 g16. g32 d16.
	|

	d32 g16. d32 g16.
	g32 d16. g32 d16.
	|
	d32 g16. d32 g16.
	g32 d16. g32 d16.
	|
	d16. g32 d16. d32
	g16. d32 g16. g32
	|
	r4
	d16. g32 g16. d32
}
tenorBB = \drummode {
	\tenorApiece
}
