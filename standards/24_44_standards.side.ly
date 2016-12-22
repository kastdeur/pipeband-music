\version "2.18.2"

\include "lilydrum.ly"

\include "./24_44_standards.side.ily"

% Scores
\score {
	\new PipeBandDrumStaff {
        	\time 2/4
		\eighthBeaming
		\drummode { \repeat volta 2 { \partial 8 \pempty \midstd \pempty \endtwo } }% End of drums %
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
        	\repeat volta 2 { \partial 8 \pone \midstd \pone \endone }
		\break
        	\repeat volta 2 { \partial 8 \ptwo \midstd \ptwo \endone }
		\break
        	\repeat volta 2 { \partial 8 \pthree \midstd \pthree \endone }
		\break
        	\repeat volta 2 { \partial 8 \pfour \midstd \pfour \endone }
		\break
        	\repeat volta 2 { \partial 8 \pfive \midstd \pfive \endone }
		\break
        	\repeat volta 2 { \partial 8 \psix \midstd \psix \endone }
		}% End of drums %

    }

	\header {
		title = "4/4 Standards"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}
