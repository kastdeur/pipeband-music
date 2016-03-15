% 2/4 The Walrus
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, v0.2.9, 2016"
sideglobal = {
	\eighthBeaming
}
snareAA = \drummode {
	d16 g |
	\flam d8 \flam g
	\flam d16 g d \flam g
	|
	d16 \flam g d g
	d8:32( g16) g
	|
	\flam d16 g32 g d16 \flam g16
	d32 g d g	d16 g->
	|
	d16:64( g8:32)(-> d16:64)(->
	g16:64 g16:64)(-> d)-> g16 |
}
snareAB = \drummode {
	\flam d8 \flam g
	\flam d16 g d \flam g
	|
	d16 \flam g d g->
	\triplet { d16 g d } \flam g16. g32
	|
	d16 g32 g d16 \flam g
	d32 g d g	d16 g16
	|
	d16 d:64( d) g
	\flam d8
}
snareBA = \drummode {
	d16 g |
	d8:32(-> g16) g
	d8:32(-> g16) d32 d
	|
	g16 \flamd d g g
	d8:32(-> g16) g
	|
	\flam d16 g32 g d16 \flam g16
	d32 g d g	d16 g->
	|
	d16:64( g8:32)(-> d16:64)(->
	g16:64 g16:64)(-> d)-> g16 |
}	
snareBBA = \drummode {	
	d8:32(-> g16) g
	d8:32(-> g16) d32 d
	|
	g16 \flamd d g g
	d8:32(-> \triplet { g16) d g }
	|
	d16 g32 g d16 \flam g
	d32 g d g	d16 g16
	|
	d16 d:64( d) g
	\flam d8
}
snareCA = \drummode {
	d16 g |
	\flam d16 \< \flam g8 \! g16
	d8:32( g16) \flam g16
	|
	r16 \flam d8 g16
	d32 g d g d16. g32
	|
	\flam d16 g32 g d16 \flam g16
	d32 g d g       d16 g->
	|
	d16:64( g8:32)(-> d16:64)(->
	g16:64 g16:64)(-> d)-> g16 |
}
snareCBA = \drummode {
	\flam d16 \< \flam g8 \! g16
	d8:32( g16) \flam g16
	|
	r16 \flam d8 g16
	\triplet { d16 g16 d16 } \flam g16. g32
	|
	d16 g32 g d16 \flam g
	d32 g d g       d16 g16
	|
	d16 d:64( d) g
	\flam d8
}
