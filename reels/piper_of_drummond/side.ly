\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
			\unfoldRepeats \new DrumVoice = "side" {
				\sideglobal

				\repeat volta 2 {
					\snareAA
					\alternative {
						\snareABA
						\snareABB
					}
				}
				\break
				\section

				\repeat volta 2 {
					\snareBA
					\alternative {
						\snareBBA
						\snareBBB
					}
				}
				\fine
			}%Side
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
