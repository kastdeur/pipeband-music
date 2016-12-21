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
				\repeat unfold 2 {
					\repeat repeat 2 {
						\partial 8 s8 \line
						\break
						\line
					}
					\break
				}
			}%Format
			
			\new DrumVoice = "tenor" {
				\tenorAA \tenorAB s8
				\tenorAA \tenorAB s8
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
