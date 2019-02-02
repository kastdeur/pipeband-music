\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.cmpd.ily"

\score {
    \new PipeBandDrumStaff {
        \global
		\sideglobal
		<<
			\new NullVoice = "format" {
				\repeat volta 2 {
					\line
				}
			}%Format
			
			\new DrumVoice = "side" {
				\snareA
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
		arranger = \arrangerSide
	}
}
