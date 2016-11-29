\version "2.18.2"

\include "lilydrum.ly"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
		\global
        <<
			{
				\mark "Intro"
				\repeat unfold 2 {
					\repeat volta 2 {
						\halfline
					}
				}
				\break
				\repeat unfold 8 {
					\mark \default
					\repeat volta 2 {
						\line
					}
					\break
				}
			}
			{
				r2.*4
				\tenorIntro

				\tenorA s8
				\tenorB s8
				\tenorC s8
				\tenorD s8
				\tenorE s8
				\tenorF s8
				\tenorG s8
				\tenorH s8
				
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
