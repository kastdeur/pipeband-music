\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.tenor.cmpd.ily"

\score {
    \new PipeBandDrumStaff {
	\global
	\tenorglobal
	<<
			\new NullVoice = "format" {
				\line
				\bar "||"
				\break

				\line
				\measure
				\bar "||"
				\break

				\line 
				\bar "||"
				\line
				\measure
				\bar "|."
			}%Format
			\new DrumVoice = "tenor" {
					\repeat percent 8 {
						<>^\markup {"alternate drummer"} 
						\tenorAA
					}

					\tenorB

					\tenorC

					\repeat percent 16 {
						<>^\markup {"alternate drummer"} 
						\tenorAA
					}
					d1^\andrewStop
			}
	>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentTenor
		composer = \composerTenor
		arranger = \arrangerTenor
	}
}
