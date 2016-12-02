\version "2.18.2"

\include "lilydrum.ly"
% Midparts
midone = \drummode {
	\flamd d8 \dr d8:32(	\tuplet 3/2 { g16) d16 g16 } \flamd d16. g32	\tuplet 3/2 { d16 g16 d16 } \flamg g8 \fr |
}
midtwo = \drummode {
	d8) d8:32( \dr	\tuplet 3/2 { g16) d16 g16 } \flamd d16. g32	\tuplet 3/2 { d16 g16 d16 } \flamg g8 \fr |
}
% Endings
endone = \drummode {
	\flamd d4 \dr	d4:32(	d4) \fr
}
endtwo = \drummode {
	d4) d4:32( \dr d4) \fr
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
	\flamd d8 d8:32(	g8[) \flamd d8]	d8:32( d8) |
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
	\flamd d8 d8:32(		g8[) \flamg g8]		r8 \backstick d16 \backstick d |
}
pseventeen = \drummode {
	\flam d8 d8:32(			g16.[) g32 d8:32(]	g8) \triplet { d16 g d } |
}
peighteen = \drummode {
	\flam d8 d8:32(			g8[) \flam d8]		\triplet { d16-> g d } \triplet { g16-> d g } |
}
\score {
	\new PipeBandDrumStaff {
		\eighthBeaming
		\time 3/4
		\drummode {
			\repeat volta 2 { \pone | \midone | \pone | \endone } \break
			\repeat volta 2 { \ptwo | \midone | \ptwo | \endone } \break
			\repeat volta 2 { \pthree | \midone | \pthree | \endone } \break
			\repeat volta 2 { \pfour | \midone | \pfour| \endone } \break
			\repeat volta 2 { \pfive | \midone | \pfive | \endone } \break
			\repeat volta 2 { \psix | \midone | \psix | \endone } \break
		}% End of drums %
	}
	\header {
		title = "3/4 Standards\nSetting 1"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}
\pageBreak

\score {
	\new PipeBandDrumStaff {
		\eighthBeaming
		\time 3/4
		\drummode {
			\repeat volta 2 { \pseven | \midone | \pseven | \endone } \break
			\repeat volta 2 { \peight | \midone | \peight | \endone } \break
			\repeat volta 2 { \pnine | \midone | \pnine | \endone } \break
			\repeat volta 2 { \pten | \midone | \pten | \endone } \break
			\repeat volta 2 { \peleven | \midone | \peleven | \endone } \break
			\repeat volta 2 { \ptwelve | \midone | \ptwelve | \endone } \break
		}% End of drums %
	}
	\header {
		title = "3/4 Standards\nSetting 2"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}
\pageBreak

\score {
	\new PipeBandDrumStaff {
		\eighthBeaming
		\time 3/4
		\drummode {
			\repeat volta 2 { \pthirteen | \midtwo | \pthirteen | \endtwo } \break
			\repeat volta 2 { \pfourteen | \midone | \pfourteen | \endone } \break
			\repeat volta 2 { \pfifteen | \midone | \pfifteen | \endone } \break
			\repeat volta 2 { \psixteen | \midone | \psixteen | \endone } \break
			\repeat volta 2 { \pseventeen | \midone | \pseventeen | \endone } \break
			\repeat volta 2 { \peighteen | \midone | \peighteen | \endone } \break
		}% End of drums %
	}
	\header {
		title = "3/4 Standards\nSetting 3"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}
