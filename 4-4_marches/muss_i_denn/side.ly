\version "2.24.1"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
	\new PipeBandDrumStaff {
		\global
		<<
			\new NullVoice = "format" {
				\repeat segno 2 {
					\repeat volta 2 {
						\part \halfline
						\volta 2 {
							\fine
						}
					}
					\break
					\section
					\part \repeat unfold 4 \measure
					\section
				}
			}%Format
			\new DrumVoice = "side" {
				\sideglobal
				\snareA s4

				\snareBA s4
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
