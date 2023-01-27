\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
		\global
		<<
			\new NullVoice = "format" {
				\repeat volta 1 {
					\line
				}
				\bar "||"
				\break
				\repeat volta 1 {
					\line
				}
				\bar "|."
			}%Format
			\new DrumVoice = "tenor" {
				\tenorglobal
				\tenorA
				\tenorB
			}%Tenor
		>>
	}
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		instrument = \instrumentTenor
		composer = \composerTenor
		arranger = \arrangerTenor
	}
}
