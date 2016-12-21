% 2/4 Black Bear>
% Bass
\version "2.18.2"
composerBass  = "E.T. de Boone, v0.9, 2016"
bassglobal = {}
% Music
bassA = \drummode {
	\repeat unfold 2 {
		d4--	g4-^	|
	}
	d8 d8
	g4
	|
	d4\v
	d8\p\< g8
	
	|
	\repeat unfold 2 {
		d4--\!	g4-^	|
	}
	|
	d8 g
	d4
	|
	r8 g
	d8

}
bassB = \drummode {
	g8
	|
	\repeat unfold 2 {
		d4\<	g4	|
		d4\!	r4	|
	}

	|
	d4
	g4
	|
	d8 g
	d4 
	|
	d8 g
	d8 g
	|
	d4
	g4	
}
