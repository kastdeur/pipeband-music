% 4/4 The Pikeman's March
% Tenor
\version "2.18.2"
composerTenor = "E.T. de Boone, v1.0, 2016"
tenorglobal = {
	}
%%music
tenorAA = \drummode {
	d16 \< g16 |
	d4 \!		g8. d16		r8 d16 g	d4
	|
	d8[ g]		d8[ g]		d4			g4
	|
	d4->		r16 d16 r8	r16 g16 r8	r16 d r g
	|
	d4		d8^\markup{scoop} g	d4^\markup{end}	r8
}
tenorAB = \drummode {
	d16 \< g16 |
	d4 \!		g8. d16		r8 d16 g	d4
	|
	d8[ g]		d8[ g]		d4		g4
	|
	d8 g		r8 g8		d8 g8		r4
	|
	d4		d8^\markup{scoop} g	d4^\markup{end}	r8
}
% Part 2
tenorBA = \drummode {
	d16 g16 |
	d8 d16 g
	d8 g
	d4
	r8. g16
	|
	d8[ g]
	d8[ g]
	\flourish d4
	\flourish g4
	|
	d4
	r8 d16 g
	d8[ g]
	r4
	|
	d4
	d8^\markup{scoop} g
	d4^\markup{end}
	d4^\splitTheFeather

}
tenorBB = \drummode {
	r4
	d8 g
	d8. g16
	d4
	|
	d8[ g]
	d8[ g]
	d4
	g4
	|
	d4
	g8[ d]
	\flourish g4
	\flourish d4
	|
	d4
	d8^\markup{scoop} g
	d4^\markup{end}
	d4^\splitTheFeather
}
tenorBC = \drummode {
	r4
	d8 g
	d8. g16
	d4
	|
	d8[ g]
	d8[ g]
	d4
	g4
	|
	d4
	g8[ d]
	\flourish g4
	\flourish d4
	|
	d4
	d8^\markup{scoop} g
	d4^\markup{end}
}
