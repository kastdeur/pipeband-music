\version "2.18.2"

\include "lilydrum.ly"

% Midparts
midone = \drummode {
	d8:32( \dr |
	\tuplet 3/2 { g16) d g } \flamd d16. g32		\tuplet 3/2 { d16 g d } \flamg g16. g32
	d16. g32 \tuplet 3/2 { d16 g d }			\flamg g8 \fr
}

midtwo = \drummode {
	d8:32( \dr |
	g16.) d32-> g16. g32		d16. g32-> d16. d32
	\flamg g8 [ d8:32( ]		g8) \fr
}
midthree = \drummode {
	d8:32( \dr |			
	g16.)\! g32 \flam d16. g32	d16. g32-> d32 g d g %|
	\flam g8 [  d8:32( ]		g8) \fr
}
midfour = \drummode {
	d8:32( \dr |
	\tuplet 3/2 { g16) d g } \flamd d16. g32		\tuplet 3/2 { d16 g d } \flamg g16. g32
	\drag d16. [  \drag g32  d32 g d g ]	d8 \fr
}
% Endings
endone = \drummode {
	g8 \dr |
	\flamd d4 	d4:32(	
	d4) \fr		r8
}

endtwo = \drummode {
	d8:32( \dr |
	g8) \flamd d16. g32		d16. \flamg g32 d16. g32
	\flamd d8[ d8:32( ]		g8) \fr
}
endthree = \drummode {
	d8:32( \dr |
	d4)		d4:32(
	d4) \fr 	r8
}
endfour = \drummode {
	d8:32( \dr |
	\triplet { g16) d g } \flam d16. g32	d32 g d g d16. g32
	\flam d8[ d8:32( ]		g8) \fr
}

% Several Parts
pempty = \drummode {
	s8 |
	s2 
	s4 s8
}
pone = \drummode {
	d16. g32 |
	\flamd d8 \tuplet 3/2 { d16 g d }		\flamg g8 d8:32(
	g16.) d32-> g16. g32				\flamd d8
}

ptwo = \drummode {
	d16. g32 |
	d4:32(		d8) \flamg g8		
	d16. g32-> d16. d32		\flamg g8
}
pthree = \drummode {
	d16. g32 |
	\flamd d16. g32 d16. d32		\flamg g16. d32 g16. g32
	d16. \flamg g32 d16. d32		\flamg g8
}
pfour = \drummode {
	d16. g32 |
	\flamd d8. g16		\flamd d8 d8:32(
	d16.) g32-> d16. d32		\flamd d8
}
pfive = \drummode {
	d16. g32 |
	d4:32(		d8) d8:32(
	d8:32)( d16.) g32		\flamd d8
}
psix = \drummode {
	d16. g32 |
	\tuplet 3/2 { d16 g d } \flamg g8		\tuplet 3/2 { d16 g d } g8
	d16. g32-> d16. d32		\flamd d8
}

pseven = \drummode {
	d16. g32 |
	\flam d16. g32 d16. \flam g32		\parenthesize \flam d16. g32 d16.  \flam g32
	d16. \flam g32 d16. \parenthesize \flam g32		\flam d8
}
peight = \drummode {
	d16. g32 |
	\flam d8 d16. g32 	\flam d8 d16 g16
	r16 d16 g16. g32 	\flam d8
}

%% Standard thingies
midstd = \drummode { \midone }