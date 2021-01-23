\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
		\global
        <<
			{
				\part \repeat volta 2 {
					\halfline
				} \alternative {
					\halfline
					{
						\halfline
						\fine
					}
				}
				\bar "||"
				\break

				\line
				\dcalfine
				\bar "||"
			}
			{
			  \drummode { g4 | } 
			  \tenorAA
			  \tenorABA r4
			  \tenorABB r4

			  \tenorBA
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
