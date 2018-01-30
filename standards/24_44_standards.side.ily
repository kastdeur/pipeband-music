\version "2.18.2"

\include "lilydrum.ly"

% Midparts
midone = \drummode {
	<<
	  \tag #'tutti \tutti { s8 | s4 s4 s4 s8 }
	  {
		d8:32( |
		\tuplet 3/2 { g16) d g } \flamd d16. g32		\tuplet 3/2 { d16 g d } \flamg g16. g32
		d16. g32 \tuplet 3/2 { d16 g d }			\flamg g8

	  }
	>>
}

midtwo = \drummode {
	<<
	  \tag #'tutti \tutti { s8 | s4 s4 s4 s8 }
	  {
		d8:32( |
		g16.) d32-> g16. g32		d16. g32-> d16. d32
		\flamg g8 [ d8:32( ]		g8)
	  }
	>>
}
midthree = \drummode {
	<<
	  \tag #'tutti \tutti { s8 | s4 s4 s4 s8 }
	  {
		d8:32( |			
		g16.)\! g32 \flam d16. g32	d16. g32-> d32 g d g %|
		\flam g8 [  d8:32( ]		g8)
	  }
	>>
}
midfour = \drummode {
	<<
	  \tag #'tutti \tutti { s8 | s4 s4 s4 s8 }
	  {
		d8:32( |
		\tuplet 3/2 { g16) d g } \flamd d16. g32		\tuplet 3/2 { d16 g d } \flamg g16. g32
		\drag d16. [  \drag g32  d32 g d g ]	d8
	  }
	>>
}
% Endings
endone = \drummode {
	<<
	  \tag #'tutti \tutti { s8 | s4 s4 s4 }
	  {
		g8 |
		\flamd d4 	d4:32(	
		d4) r8
	  }
	>>
}

endtwo = \drummode {
	<<
	  \tag #'tutti \tutti { s8 | s4 s4 s4 s8 }
	  {
		d8:32( |
		g8) \flamd d16. g32		d16. \flamg g32 d16. g32
		\flamd d8[ d8:32( ]		g8)
	  }
	>>
}
endthree = \drummode {
	<<
	  \tag #'tutti \tutti { s8 | s4 s4 s4 }
	  {
		d8:32( |
		d4)		d4:32(
		d4) 
		r8
	  }
	>>
}
endfour = \drummode {
	<<
	  \tag #'tutti \tutti { s8 | s4 s4 s4 s8 }
	  {
		d8:32( |
		\triplet { g16) d g } \flam d16. g32	d32 g d g d16. g32
		\flam d8[ d8:32( ]		g8)
	  }
	>>
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
	g16.) d32-> g16. g32		\flamd d8
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
pnine = \drummode {
	d16. g32 |
	d16.:64~ d32 g16. d32:128~
	d16. g32 d16.:64~ d32
	g16. d32:128~ d16. g32
	\flam d8
}
%% Standard thingies
midstd = \drummode { \midone }
