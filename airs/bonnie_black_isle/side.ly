\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
		\sideglobal
		<<
			\new NullVoice = "format" {
					\repeat volta 2 {
						\part
						\line
						\markTextEol "Fine"
					}
					\break
					\part
					\line
					\markTextEol "D.C. al Fine"
					\bar "||"
		
			}%Format
			\new DrumVoice = "side" {
			  \snareAA \snareAB s4.

			  \snareBA \snareAB s4.
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
