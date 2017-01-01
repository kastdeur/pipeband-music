\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
		\global
        <<
			{
				\repeat unfold 2 {
					\repeat volta 2 { 
						\part \line 
					} \break 
				}
			}
			{
				\repeat unfold 2 {
					r8. \tenorA s4
				}
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
