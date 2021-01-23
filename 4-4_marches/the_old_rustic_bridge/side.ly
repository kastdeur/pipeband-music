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
				\part
				\repeat volta 2 {
					\halfline \measure s2.
				} \alternative {
				  { s4 | }
				}
				\fine
				\bar "||"
				\break

				\part \line
				\dcalfine
				\bar "||"
			}%Format
			\new DrumVoice = "side" {
				\drummode { \flam d8. g16 | }
				\snareA
				\drummode { r8 d16. g32 | }

				r8 \snareBA
			}
		>>
	}
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
		arranger = \arrangerSide
	}
}
