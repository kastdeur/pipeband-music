\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
		\global
		\tenorglobal

		\repeat volta 2 {
			\unfoldRepeats 
			\tenorA
		}
		\break
		\repeat volta 2 {
			\unfoldRepeats 
			\tenorB
		}
		\break
		\repeat volta 2 {
			\unfoldRepeats 
			\tenorC
		}
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentTenor
		composer = \composerTenor
		arranger = \arrangerTenor
	}
}
