\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.tenor.ily"

\score {
    \new PipeBandDrumStaff\with {
	    fontSize = #-0.5
		\override StaffSymbol.staff-space = #(magstep -0.5)
		\override StaffSymbol.thickness = #(magstep -0.5)
	} 
	{
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
				R2.*4
				\tenorIntro

				\tenorA r8
				\tenorB r8
				\tenorC r8
				\tenorD r8
				\tenorE r8
				\tenorF r8
				\tenorG r8
				\tenorH r8
				
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
