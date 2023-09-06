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
						\part \line
						\volta 2 {
							\fine
						}
					}
					\break
					\section
					\part \line
					\section
				}
			}
			\new DrumVoice = "side" {
			\sideglobal
			 \snareA s8

			 \snareBA
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}
