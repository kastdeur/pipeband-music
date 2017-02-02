\version "2.18.2"

\include "lilydrum.ly"
composerSide = "E.T. de Boone, 05-01-2017"
% Midparts
midone = \drummode {
	d16\dr g |
	\flam d8. g16:64~ g8
	d4.:32~
	d4 g8
	|
	d8. \flam g16 d8
	d4.:32~ 
	d4\fr
}
% Endings
endone = \drummode {
	g8 \dr |
	\flam d8. d16 g8
	\flam d4 \drag g8
	d16\< g d g d8 \!
	|
	d8. \flam g16 d8
	d4.:32~ 
	d4 \fr
}

% Several Parts
pempty = \drummode {
	s8 |
	s8*8
}
pone = \drummode {
	g8 |
	\flam d8. d16 g8
	d4.:32~ 
	d8 d16 g d g 
	|
	d8. d16 \flam g8
	d4.:32~
	d4
}
ptwo = \drummode {
	d8:32~ |
	\triplet { g8 d g } \flam d
	\triplet { d8 g d } \flam g
	d16 g d-> g d g
	|
	d8.-> d16 \flam g8
	d4.:32~
	d4
}
pthree = \drummode {
  g8 |
  \flam d8. d16 g8
  d8.:64~ d16 g8
  d4:32~->\> g8\!
  |
  d16 g d g d8
  \flam d8. d16 g8
  \flam d4
}
