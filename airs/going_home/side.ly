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
					\line
				}
				\break
				\line
				\break
				\line
				\bar "|."
			}%Format

			\new DrumVoice = "side" {
				\snareA

				\snareBA

				\snareBB
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
