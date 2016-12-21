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
				\part \line
				\line
				\bar "|."
				\break
				\line
				\line
				\bar "|."
			}%Format
			
			\new DrumVoice = "tenor" {
				\tenorA
				\tenorB s4
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
