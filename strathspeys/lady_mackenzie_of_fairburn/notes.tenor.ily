% 4/4 Lady MacKenzie of Fairburn
% Tenor
\version "2.18.2"
composerTenor = "E.T. de Boone, v0.9, 2016"
tenorA = \drummode {
	d8.[ g16]		d4^\splitTheFeather		r4		<< d4 g4 >>
	|
	\flourish {	d4	g4	d4	g4	}
	|
	d4		\triplet { d8 \<  g d-> \> } \triplet { g8 d g }	d4 \!
	|
	d4		g4		d4		r4
	|
}
tenorBA = \drummode {
	\triplet { d8 \pppp \< g d }
	\triplet { g8 d g }
	\triplet { d8 g d }
	g8. \! \mf g16
	|
	d8. g16->
	r8.  g16
	d8. g16->
	r4
	|
	d8. g16
	d4
	g8. d16
	g4
	|
	d8 \flourish g8
	r8 \flourish d8
	r8 g8
	d4
}
tenorBB = \drummode {
	\triplet { d8 \pppp \< g d }
	\triplet { g8 d g }
	\triplet { d8 g d }
	g8. \! \mf g16
	|
	\scoop { d8. g16->
		r8.  g16
		d8. } g16->
	r4
	|
	d16 g8.
	\flourish g4
	g8. d16
	\flourish d4
	|
	\triplet { d8 g d }
	g4
	d8. g16
	d4
}
