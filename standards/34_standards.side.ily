\version "2.18.2"

\include "lilydrum.ly"

% Midparts
midone = \drummode {
	\tutti {
	  \flamd d8 d8:32(	\tuplet 3/2 { g16) d16 g16 } \flamd d16. g32	\tuplet 3/2 { d16 g16 d16 } \flamg g8
	} |
}
midtwo = \drummode {
	d8) \tutti {
	  d8:32( 	\tuplet 3/2 { g16) d16 g16 } \flamd d16. g32	\tuplet 3/2 { d16 g16 d16 } \flamg g8
	} |
}
% Endings
endone = \drummode {
	\flamd \tutti { d4 	d4:32(	d4)  }
}
endtwo = \drummode {
	d4) \tutti { d4:32(  d4)  }
}

% Several Parts
pempty = \drummode {
	s8 |
	s4 s4 s4 |
}
pone = \drummode {
	\flamd d8 d8:32(	g8[) d8:32(]	d8:32)( d8) |
}
ptwo = \drummode {
	\flamd d8 d8:32(	g8[) d8:32(]	g16.) d32-> g16. g32 |
}
pthree = \drummode {
	\flamd d8 d8:32(	g8[) \flamd d8]	d16 \flamg g8 d16 |
}
pfour = \drummode {
	\flamd d8 d8:32(	g8[) \flamd d8]	\tuplet 3/2 { d16 g16 d16 } \flamg g8 |
}
pfive = \drummode {
	\flamd d8 d8:32(	g8[) \flamd d8]	d8:32( g8) |
}
psix = \drummode {
	\flamd d8 d8:32(	g16.[) g32 \flamd d16. g32]	d16. \flamg g32 d16. g32 |
}

pseven = \drummode {
	d4:32(->		d8[) d8:32(]->		d4) |
}

peight = \drummode {
	d4:32(\<		d8[)\! d8:32(]		g8) g8 |
}

pnine = \drummode {
	\flamd d16 g16 d16 \flamg g16		d16 g16 \flamd d16 g16		d16 \flamg g16 d16 g16 |
}

pten = \drummode {
	\flamd d8 \tuplet 3/2 {d16 g16 d16}		\flamd g8 \tuplet 3/2 {d16 g16 d16}		g16. d32-> g16. g32 |
}
peleven = \drummode {
	\flamd d16. g32 d16. d32		\flamg g16. d32 g16. g32		\flamd d16. g32 d16. g32 |
}
ptwelve = \drummode {
	\flamd d8 d32 g d g		d8  d32 g d g		d16. g32-> d16. d32 |
}
pthirteen = \drummode {
	\flamd d8 d8:32(		d8:32[)(-> g8:32)(]->		g8:32)( d8:32)(-> |
}
pfourteen = \drummode {
	\flamd d8 d8:32(		g16.[) d32:128( d16.) g32]		d8:32( g8) |
}
pfifteen = \drummode {
	\flamd d8 d8:32(		g8[) \flamg g8]		d16 d d d |
}
psixteen = \drummode {
	\flamd d8 d8:32(		g8[) \flamg g8]		r8 \crossstick d16 \crossstick d |
}
pseventeen = \drummode {
	\flam d8 d8:32(			g16.[) g32 d8:32(]	g8) \triplet { d16 g d } |
}
peighteen = \drummode {
	\flam d8 d8:32(			g8[) \flam d8]		\triplet { d16-> g d } \triplet { g16-> d g } |
}
pnineteen = \drummode {
	\flamd d8 d8:32(		g8[) d8:32(]		g16.) d32:64( d16.) g32 |
}

ptwenty = \drummode {
	\flamd d16. g32 d16. \flam g32		d16. g32 \flam d16. g32		d16. \flam g32 d16. g32 |
}
ptwentyone = \drummode {
	\flamd d8 d8:32(		g8[) \flam d8]		g16 g \crossstick d \crossstick d |
}
ptwentytwo = \drummode {
	\flamd d8 d8:32(		g8[) d16.:64( d32)]		g16. d32:64( d16.) g32 |
}
ptwentythree = \drummode {
	\flam d16. g32 d16. g32->	d32 g d g d16. g32	\triplet { d16 g d-> } \triplet { g16 d g-> } |
}
ptwentyfour = \drummode {
	\flam d16. g32 d16. g32->	d32 g d g d16. d32	g16. d32-> g32 d g d |
}
ptwentyfive = \drummode {
	\flamd d16. g32 d16. g32->	d32 g d g \triplet { d16-> g d16-> }	g16. d32-> g16. g32 |
}
