\version "2.18.2"

\include "lilydrum.ly"

% Midpart
midone = \drummode {
	<<
	  \tag #'tutti \tutti { s4. s4. | s4. s4 }
	  {
		\flam d8. g16 d8		d4.:32( |
		d8.) g16 d8		\flam d4
	  }
	>>
}
midtwo = \drummode {%Stonehaven PnD
	<<
	  \tag #'tutti \tutti { s4. s4. | s4. s4 }
	  {
		\flam d8. g16 \flam d8	d16 g d g-> d g |
		d8. g16 d8	\flam d4
	  }
	>>
}
% Endings
endone = \drummode {
	<<
	  \tag #'tutti \tutti { s4. s4. | s4. s4 }
	  {
		\flam d8. d16:64( d8)		d4.:32( |
		d8.) g16 d8 		\flamd d4
	  }
	>>
}

endtwo = \drummode {
	<<
	  \tag #'tutti \tutti { s4. s4. | s4. s4 }
	  {
		\flam d8. g16 d8	d16 g d g d8 |
		d4.:32(		d4)
	  }
	>>
}
endthree = \drummode {%Stonehaven PnD
	<<
	  \tag #'tutti \tutti { s4. s4. | s4. s4 }
	  {
		\flam d8. g16 d32 g d g	d8. g16 \flam d8 |
		d4.:32(		d4)
	  }
	>>
}
% Parts
pempty = \drummode {
	s8 |
	s1. |
}
pone = \drummode {
	g8 |
	\flamd d4 d8:32(	g4) d8:32( |
	g8.) d16 g8		\flamd d8. g16 d8 |
}
ptwo = \drummode {
	g8 |
	d8.:32( d16) g8		d8.:32( d16) g8 |
	\flamd d8. d16:64( d8)		d8.:32( d16) g8 |
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
	g16) d g \flam d8.		d16 g d \flam g8. |
	d16 g d-> g16 d g	\flam d8. g16 d8 |

}
pfivebis = \drummode {
	d8:32( |
	\tuplet 3/2 { g8) d g } \flamd d8		\tuplet 3/2 { d8 g d } \flam g8 |
	\tuplet 3/2 { d8 g d-> }		\tuplet 3/2 { g8 d g } \flamd \tuplet 3/2 { d8 g8. d16 } |

}
psix = \drummode {
	g8 |
	d4.:32(\<		d4.:32)( |
	d16)\!\< g d g d8\!		\flamd d8. g16 d8 |

}

pseven = \drummode { %Stonehaven PnD
	g8 |
	d4:32( g8)	\flam g8. g16 \flam d8 |
	r8. d16:64( d8)	\flam d8. g16 d8 |
}

peight = \drummode { %Stonehaven PnD
	d16 g |
	\flam d4 g8	d8.:32( g16) \flam d8 |
	r4 d16 g	\flam d8. g16 d8 |
}

pnine = \drummode { %Stonehaven PnD
	d16 g |
	\flam d4 g8	d8.( g16) \flam d8 |
	r8. d16:64( d8)	\flam d8. g16 d8 |
}

pten = \drummode {
	d8:32( |
	g8.) g16 \flam d8	\flam g8. g16 \flam d8 |
	d8. g16 d8	\flam g8. d16 g8|
}

peleven = \drummode {
	d8:32( |
	g8.) g16 \flam d8	\flam g8. g16 d32\< g d g <>\!|
	d8. g16 d8	\flam g8. d16 g8|
}
