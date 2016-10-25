% 4/4 The Crusaders March
% Side
\version "2.18.2"
composerSide = "E.T. de Boone, 2016"
sideglobal = {
	\eighthBeaming
}
% Music

snareAA = \drummode {
	d16. g32 |
	\flam d8 d16. g32
	\flam d8 d16 g16
	r16. d32 g16. g32
	\flam d8 
	
	d8:32( \dr |
	\tuplet 3/2 { g16) d g } \flamd d16. g32
	\tuplet 3/2 { d16 g d } \flamg g16. g32
	d16. g32 \tuplet 3/2 { d16 g d }
	\flamg g8 \fr

	d16. g32 |
	\flam d8 d16. g32
	\flam d8 d16 g16
	r16. d32 g16. g32
	\flam d8 g |

	\flam d4 \dr d4:32( d4)
}
snareAB = \drummode {
	d16. g32 |
	\flam d8 d16. g32
	\flam d8 d16 g16
	r16. d32 g16. g32
	\flam d8 
	
	d8:32( |
	\tuplet 3/2 { g16) d g } \flamd d16. g32
	\tuplet 3/2 { d16 g d } \flamg g16. g32
	d16. g32 \tuplet 3/2 { d16 g d }
	\flamg g8

	d16. g32 |
	d8:32( \triplet { g16) d g }
	d8:32( g8:32)(
	\triplet { d16) g d-> } g16. g32
	d8:32( \triplet { g16) d g } |
	
	\flam g4 d4:32( d4) \fr
	\flam d16 d \flam g g
}

snareBA = \drummode {
	\flam d4
	\flam g8. g16
	d8:32( g8)
	\flam d8

	d8:32( \dr |
	\tuplet 3/2 { g16) d g } \flamd d16. g32
	\tuplet 3/2 { d16 g d } \flamg g16. g32
	d16. g32 \tuplet 3/2 { d16 g d }
	\flamg g8 \fr

	d16. g32 |
	\flamd d16. g32 d16. d32
	\flamg g16. d32 g16. g32
	d16. \flamg g32 d16. d32
	\flamg g16. d32 \flam g8 |

	\flam d4 \dr d4:32( d4)
}
snareBB = \drummode {
	d16. g32 |
	\flam d4
	\flam g8. g16
	d8:32( g8)
	\flam d8

	d8:32( |
	\tuplet 3/2 { g16) d g } \flamd d16. g32
	\tuplet 3/2 { d16 g d } \flamg g16. g32
	d16. g32 \tuplet 3/2 { d16 g d }
	\flamg g8
	
	d16. g32 |
	d8:32( \triplet { g16) d g }
	d8:32( g8:32)(
	\triplet { d16) g d-> } g16. g32
	d8:32( \triplet { g16) d g } |
	
	\flam g4 d4:32( d4) \fr
}
