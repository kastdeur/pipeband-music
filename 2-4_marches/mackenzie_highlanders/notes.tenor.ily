% 2/4 MacKenzie Highlanders
% Tenor
\version "2.18.2"
composerTenor = "F.J. de Boone, v0.5, 2016"
tenorglobal = {}
% Music

tenorA = \drummode {
	r8 d16. g32
	r8 d16. g32
	|
	d4 r8 g8
	|
	r8 d16. g32
	r8 d16. g32
	|
	r4 d4
	|
	
	r8 d16. g32
	r8 d16. g32
	|
	d4 r8 g8
	|
	r8 d32 g16.
	r8 d32 g16.
	|
	r4 r8
}
tenorBA = \drummode {
	g8 |
	r8 d32 g16.
	r8 d32 g16.
	|
	d4
	r8 g8
	|
	r8 d32 g16.
	r8 d32 g16.
	|
	r4
	d8 g8
	|
	
	r8 d32 g16.
	r8 d32 g16.
	|
	d4 r8 g8
	|
	r8 d32 g16.
	r8 d32 g16.
	|
	r4 r8
}
tenorBB = \drummode {
	g8 |
	r8 d32 g16.
	r8 d32 g16.
	|
	d4
	r8 g8
	|
	r8 d32 g16.
	r8 d32 g16.
	|
	r4
	d8 g8
	|
	
	\repeat unfold 3
	{
		r8 d32 g16.
		r8 d32 g16.
		|
	}
	r4 r8
}
