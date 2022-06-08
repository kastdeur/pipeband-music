\version "2.18.2"

\include "lilydrum.ly"

% Midparts
midempty = \drummode {
	\tutti {
		s8 |
		s2..
	}
}
midone = \drummode {
	\tutti {
		d8:32( |
		\tuplet 3/2 { g16) d g } \flamd d16. g32		\tuplet 3/2 { d16 g d } \flamg g16. g32
		d16. g32 \tuplet 3/2 { d16 g d }			\flamg g8
	}
}

midtwo = \drummode {
	\tutti {
		d8:32( |
		g16.) d32-> g16. g32		d16. g32-> d16. d32
		\flamg g8 [ d8:32( ]		g8)
	}
}
midthree = \drummode {
	\tutti {
		d8:32( |
		g16.)\! g32 \flam d16. g32	d16. g32-> d32 g d g %|
		\flam g8 [  d8:32( ]		g8)
	}
}
midfour = \drummode {
	\tutti {
		d8:32( |
		\tuplet 3/2 { g16) d g } \flamd d16. g32		\tuplet 3/2 { d16 g d } \flamg g16. g32
		\drag d16. [  \drag g32  d32 g d g ]	d8
	}
}
midfive = \drummode {
	\tutti {
		d8:32( |
		\tuplet 3/2 { g16) d g } \flam d8
		g16. d32-> g16. g32
		\flam d8 d8:32(
		g)
	}
}
% Endings
endempty = \drummode {
	\tutti {
		\tag #'upbeat s8 |
		s2.
	}	\tag #'endrest s8
}
endone = \drummode {
	\tutti {
		\tag #'upbeat g8 |
		\flamd d4 	d4:32(
		d4)
	}	\tag #'endrest r8
}

endtwo = \drummode {
	\tutti {
		d8:32( |
		g8) \flamd d16. g32		d16. \flamg g32 d16. g32
		\flamd d8[ d8:32( ]		g8)
	}
}
endthree = \drummode {
	\tutti {
		d8:32( |
		d4)		d4:32(
		d4)
	} 	\tag #'endrest r8
}
endfour = \drummode {
	\tutti {
		d8:32( |
		\triplet { g16) d g } \flam d16. g32	d32 g d g d16. g32
		\flam d8[ d8:32( ]		g8)
	}
}

% Several Parts
pempty = \drummode {
	\tag #'upbeat s8 |
	s2
	s4 s8
}
pone = \drummode {
	\tag #'upbeat { d16. g32 } |
	\flamd d8 \tuplet 3/2 { d16 g d }		\flamg g8 d8:32(
	g16.) d32-> g16. g32				\flamd d8
}

ptwo = \drummode {
	\tag #'upbeat { d16. g32 } |
	d4:32(		d8) \flamg g8
	d16. g32-> d16. d32		\flamg g8
}
pthree = \drummode {
	\tag #'upbeat { d16. g32 } |
	\flamd d16. g32 d16. d32		\flamg g16. d32 g16. g32
	d16. \flamg g32 d16. d32		\flamg g8
}
pfour = \drummode {
	\tag #'upbeat { d16. g32 } |
	\flamd d8. g16		\flamd d8 d8:32(
	g16.) d32-> g16. g32		\flamd d8
}
pfive = \drummode {
	\tag #'upbeat { d16. g32 } |
	d4:32(		d8) d8:32(
	d8:32)( d16.) g32		\flamd d8
}
psix = \drummode {
	\tag #'upbeat { d16. g32 } |
	\tuplet 3/2 { d16 g d } \flamg g8		\tuplet 3/2 { d16 g d } g8
	d16. g32-> d16. d32		\flamd d8
}

pseven = \drummode {
	\tag #'upbeat { d16. g32 } |
	\flam d16. g32 d16. \flam g32		\parenthesize \flam d16. g32 d16.  \flam g32
	d16. \flam g32 d16. \parenthesize \flam g32		\flam d8
}
peight = \drummode {
	\tag #'upbeat { d16. g32 } |
	\flam d8 d16. g32 	\flam d8 d16. g32
	r16. d32 g16. g32 	\flam d8
}
pnine = \drummode {
	\tag #'upbeat { d16. g32 } |
	d16.:64( d32) g16. d32:64(
	d16.) g32 d16.:64( d32)
	g16. d32:64( d16.) g32
	\flam d8
}
pten = \drummode {
	\tag #'upbeat { d16. g32 } |
	d8:32(-> g8:32)(->
	\triplet { d16) g d } \flam g16. g32
	d8:32([-> g:32)(]->	d8)
}
peleven = \drummode {
	\tag #'upbeat { d16. g32 } |
	\flam d16. g32 d16. g32:64(
	g16.:64 d32)-> g16.-> d32:64(->
	g16.:64 g32) d16. d32
	\flam g8
}
ptwelve = \drummode {
	\tag #'upbeat { d16. g32 } |
	\flam d16. g32 d16. g32
	r16. d32 g16.-> d32
	r16. g32 d16. d32
	\flam g8
}
pthirteen = \drummode {
	\tag #'upbeat { d16. g32 } |
	d16.:64~ d32 g16. d32:128~
	d16. g32 d16.:64~ d32
	g16. d32:128~ d16. g32
	\flam d8
}
pfourteen = \drummode {
	\tag #'upbeat { d16. g32 } |
	d8.:32( g16)
	d16. d32:128~ d16. g32
	d8:32(-> g8:32)(->
	d8)
}
pfifteen = \drummode {
	\tag #'upbeat { d8:32( |
	<>)	} g16. d32 g16. g32
	\flam d32 d16. g16. d32:128~
	d16. g32-> d16. d32
	\flam g8
}
psixteen = \drummode {
	\tag #'upbeat { d16. g32 } |
	\flam d32 d16. g16. d32
	\flam g32 g16. d16.:32( g32:128~
	g16.) d32-> g16. g32
	\flam d32 d16.
}

%% Standard thingies
midstd = \drummode { \midone }
