% 2/2 Jock Wilson's Ball
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, 2016"
sideglobal = {
	\eighthReelBeaming
}
% Music
sideA = \drummode {
	g16 |
	\flam d4	\flam g8. g16
	d8.:32(  d16)->	g8. g16 
	|
	\flam d8. [ \drag g16	d32 g d g d8 ]
	g8. [ \drag d16		d8. g16 ]
	|
	\flam d8. [ \drag g16 ]	d32 g d g d8 ]
	g8.:32->([  d16)	g8. g16 ]
	|
	\triplet {d8 [  d g } d16 g32 g ]
	d8 [  g32 d g d g8-> d8. d16:64( ]
	|

	d4) 	\flam g8. g16 
	d8.:32([  d16)->	g8. g16 ]
	|
	\flam d8.[  \drag g16	d32 g d g d8 ]
	g8.[  \drag d16		d8. g16 ]
	|
	\flam d32[  d g8.		d16 g8. ]
	d4:32(	 d8.) g16
	|
	\triplet {d8[  g d }	\flam g8. \drag g16 ]
	d32  g d g d8	g8.
}

sideB = \drummode {
	g16 |
	\flam d8[  d16:64( d16)	d8:32(-> g16) d16 ]
	\flam d8[  d16:64( d16)	\flam d8. g16 ]
	|
	\flamd \triplet { d8[  g8 \flam d8 } \flam g8 \triplet { d16 g d ]} 
	g8.[  \drag d16		d8. g16 ]
	|
	\flam d8[  d16:64~ d16	d8:32(-> g16) d16 ]
	\flam d8[  d16:64~ d16	\flam d8. g16 ]
	|
	\triplet { d8 [ d g } d16 g32 g]
	d8[  g32 d g d g8-> d8. d16:64( ]
	
	|
	d8)[  d16:64~ d16		d8:32(-> g16) d16 ]
	\flam d8[  d16:64~ d16	\flam d8. g16 ]
	|
	\flam d8.[  \drag g16	d32 g d g d8 ]
	g8.[  \drag d16		d8. g16 ]
|
	s1*2
}
