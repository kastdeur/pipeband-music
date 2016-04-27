% 2/4 MacKenzie Highlanders
% Tenor
\version "2.18.2"
composerTenor = "E.T. de Boone, v0.0.1, 2016"
tenorglobal = {
	\eighthBeaming
}
% Music

tenorA = \drummode {
	g8 |
	d16.\< g32 d16. g32\!
	r16. g32\< \triplet { d16 g d }
	|
	g16.->\< d32 g16. g32 \!
	r16. d32\< \triplet { g16 d g }
	|
	d16. \< g32 d16. d32 \!
	r16 g16\< r16 d16
	|
	r16 g16 r16 d16
	g8\! g8
	|

	d16.\< g32 d16. g32 \!
	r16. g32\< \triplet { d16 g d }
	|
	g16.->\< d32 g16. g32 \!
	r16. g32\< d16. g32
	|
	d32 g16.\! d16. g32
	r16. g32 d16. g32
	|
	d8.. g32
	r8

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
	d4 r8
}
