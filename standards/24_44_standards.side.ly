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

% Scores
\score {
	\new PipeBandDrumStaff {
        	\time 2/4
		\eighthBeaming
		\drummode { \repeat volta 2 { \partial 8 \pempty \midone \pempty \endtwo } }% End of drums %
	}
	\header {
		title = "2/4 Standards"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}
\score {
    \new PipeBandDrumStaff {
        \eighthBeaming
        \time 4/4
		\drummode{
        	\repeat volta 2 { \partial 8 \pone \midone \pone \endone }
		\break
        	\repeat volta 2 { \partial 8 \ptwo \midone \ptwo \endone }
		\break
        	\repeat volta 2 { \partial 8 \pthree \midone \pthree \endone }
		\break
        	\repeat volta 2 { \partial 8 \pfour \midone \pfour \endone }
		\break
        	\repeat volta 2 { \partial 8 \pfive \midone \pfive \endone }
		\break
        	\repeat volta 2 { \partial 8 \psix \midone \psix \endone }
		}% End of drums %

    }

	\header {
		title = "4/4 Standards"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}
\pageBreak

\score {
	\new PipeBandDrumStaff {
		\eighthBeaming
		\time 4/4
	
		\drummode{
		\repeat volta 2 { \partial 8 \pseven \pempty \pseven \endone }
		\break
		\repeat volta 2 { \partial 8 \pempty \midtwo \pempty \endthree }
		\break
		\repeat volta 2 { \partial 8 \pempty \midthree \pempty \endone }
		\break
		\repeat volta 2 { \partial 8 \pempty \midfour \pempty \endtwo }
		}% End of drums %

    }

	\header {
		title = "4/4 Standards (Extra)"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}
