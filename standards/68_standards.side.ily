\version "2.18.2"

\include "lilydrum.ly"
% Midpart
midempty = \drummode {
	\tutti {
		s4. s4
	}
}
midone = \drummode {
	\tutti {
		\flam d8.\v g16 d8		d4.:32( |
		d8.) g16 d8		\flamd d4
	}
}
midtwo = \drummode {%Stonehaven PnD
	\tutti {
		\flam d8.\v g16 \flam d8	d16 g d g-> d g |
		d8. g16 d8	\flam d4
	}
}
midthree = \drummode {% 48th HoC
	\tutti {
	  \flam d8. g16 \flam d8	d8.:32(\> g16)\! d8:32(\< |
		d8.)\! g16 d8	\flam d4
	}
}
midfour = \drummode {% FM Montgomery
	\tutti {
		d16->  g d g d-> g	d g d4:32( |
		d16)-> g d g d-> g	d g \tag #'endroll { d4:32( } \tag #'endtap { d8 }
	}
}


% Endings
endempty = \drummode {
	\tutti {
		s4. s4
	}
}
endone = \drummode {
	\tutti {
		\flam d8.\v d16:64( d8)		d4.:32( |
		d8.) g16 d8 		\flamd d4
	}
}

endtwo = \drummode {
	\tutti {
		\flam d8.\v g16 d8	d16 g d g d8 |
		d4.:32(		d4)
	}
}
endthree = \drummode {%Stonehaven PnD
	\tutti {
		\flam d8.\v g16 d32 g d g	d8. g16 \flam d8 |
		d4.:32(		d4)
	}
}
endfour = \drummode { %48th HoC
	\tutti {
		d16 g d g d8	\flamg8. d16:64( d8) |
		d4.:32(		d4)
	}
}
endfive = \drummode { % FM Montgomery
	\tutti {
		\flam d8. d16 \flam g16 d:64(	\triplet { d8[) g \drag d} d]-> |
		d4.:32(		d4)
	}
}
endsix = \drummode { % FM Montgomery
	\flamdr d8. \fr	g16:64( g8)	\flamdr d8. \fr d16 \flamdr g8 \fr |
	d8.:64( d16) \flamdr g8	\flam d4 \fr
}

% Parts
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pempty = \drummode {
	s8 |
	s2. s2. |
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
	g8.) g16 \flam d8		d8. d16 \flam g8 |
	d8. g16 \flam d8		\flam g8. d16 g8 |
}

pfive = \drummode {
	d8:32( |
	\tuplet 3/2 { g8) d g } \flamd d8		\tuplet 3/2 { d8 g d } \flam g8 |
	d16 g d-> g d g	\flam d8. g16 d8 |

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
	\flam d4 g8	d8.:32( g16) \flam d8 |
	r8. d16:64( d8)	\flam d8. g16 d8 |
}

pten = \drummode {
	d8:32( |
	g8.) g16 \flam d8	\flam g8. g16 \flam d8 |
	d8. g16 d8	\flam g8. d16 g8 |
}

peleven = \drummode {
	d8:32( |
	g8.) g16 \flam d8	\flam g8. g16 d32\< g d g <>\!|
	d8. g16 d8	\flam g8. d16 g8 |
}

ptwelve = \drummode { %C. Ooms
	d8 |
	d4:32(-> g8:32)(->	g8.:32 d16:32)(-> \< g8:32 |
	d8.)-\v \! g16 d8	\flam d8. d16 \flam g8 |
}

pthirteen = \drummode { %C. Ooms
	d8:32( \> |
	g8.) \! d16 \flam g8->	d8. g16 \flam d8-> |
	g8. \flam g16 d8	\flam d8. d16 \flam g8-> |
}

pfourteen = \drummode {
	g8 |
	d16 g d g d8	g16 d g d g8 |
	\flam d8. d16:64( d8)	g16 d g d g8 |
}

pfifteen = \drummode {
	g8 |
	d8. g8.	d4 d8:32( |
	g4) g8	d8.:32( d16) g8 |
}

psixteen = \drummode {
	g8 |
	d8:32(-> \tuplet 3/2 { g8) d g }	\tuplet 3/2 { d8 g d } g8:32(-> |
	\tuplet 3/2 { d8) g d } \flam g8	g8. d16 \flam g8 |
}
pseventeen = \drummode {
	d16:64( g16)|
	d16 g d g d8:32(->	d4.:32)(->\< |
	d16)\! g d g d8:32(->	g8.:32)(-> d16) g8 |
}
peighteen = \drummode {
	\triplet { g16 d g } |
	\flam d4 d8:32(	g8.) d16 g8 |
	r8. \drag d16 d32 g d g	d8.-> g16 d8 |
}
