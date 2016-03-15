\version "2.18.2"

\include "config.ily"
\include "notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
	\global
	\tenorglobal
	<<
			{
				\repeat volta 2 {
					\line
				}

				\part \line 
				\bar "||"
				\break

				\part \line \bar "|."
			}%Format
			{
				\tenorA

				\tenorBA
				\tenorBB
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
