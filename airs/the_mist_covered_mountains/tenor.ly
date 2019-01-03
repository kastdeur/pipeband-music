\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
		\global
        <<
			{
			  	\repeat volta 2 {
					\line
			  	}
			  	\break
				\repeat volta 2 {
					\line
				}
			}

			{
			  \tenorA r8
			  \tenorB r8
		 	}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentTenor
		composer = \composerTenor
	}
}
