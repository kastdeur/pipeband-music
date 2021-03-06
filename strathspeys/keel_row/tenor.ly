\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
		\global
		\tenorglobal
		<<
			\new NullVoice = "format" {
				\repeat volta 2 {
				  	\halfline
				}
				\break
				\repeat volta 2 {
					\halfline
				}
			}%Format

			\new DrumVoice = "tenor" {
				\tenorA

				\tenorB
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
