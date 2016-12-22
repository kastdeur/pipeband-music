\version "2.18.2"

\include "lilydrum.ly"
% Midpart
midone = \drummode {
	\flamd d8. \dr g16 d8		d4.:32( |
	d8.) g16 d8		\flamd d4 \fr
}

% Endings
endone = \drummode {
	\flamd d8. \dr d16:64( d8)		d4.:32( |
	d8.) g16 d8 		\flamd d4 \fr
}

endtwo = \drummode {
	\flam d8. \dr g16 d8	d16 g d g d8 |
	d4.:32(		d4) \fr
}

% Parts
pempty = \drummode {
	s8 |
	s1. |
}
pone = \drummode {
	g8 |
	\flamd d4 d8:32(	g4) d8:32( |
	g8.) g16 d8		\flamd d8. g16 d8 |
}
ptwo = \drummode {
	g8 |
	d8:32( d8) g8		d8:32( d8) g8 |
	\flamd d8 d8:32( d8)		d8:32( d8) d8|
}

pthree = \drummode {
g8 |
	d4.:32(\<		d4.:32)( |
	d8.)\! g16 d8		\flamd d8. g16 d8 |
}

pfour = \drummode {
	d8:32( |
	g8.) g16 \flamd d8		d8. d16 \flamg g8 |
	d8. g16 \flamd d8		\flamd d8. g16 d8 |
}

pfive = \drummode {
	d8:32( |
	\tuplet 3/2 { g8) d g } \flamd d8		\tuplet 3/2 { g8 d g } \flamd d8 |
	\tuplet 3/2 { d8 g d-> }		\tuplet 3/2 { g8 d g } \flamd \tuplet 3/2 { d8 g8. d16 } |

}

psix = \drummode {
	g8 |
	d4.:32(\<		d4.:32)( |
	d16)\!\< g d g d8\!		\flamd d8. g16 d8 |

}
