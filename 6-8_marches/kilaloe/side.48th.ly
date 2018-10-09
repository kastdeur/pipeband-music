\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.48th.ily"

part = {\partial 4. \grace{ s4 } s4. }
\score {
    \new PipeBandDrumStaff {
        \global
		\sideglobal
		<<
			\new NullVoice = "format" {
				\repeat volta 2 {
					\part
					\line
				}
				\break
				\repeat volta 2 {
					\part
					\line
				}
				\break

				\repeat volta 2 {
					\part
					\line
					\break
					\line
					\measure
				}

			}%Format

			\new DrumVoice = "side" {
				\snareA s4.

				\snareB s4.

				\snareC

			}
		>>
	}
	\header {
		title = \markup \column { \title \normalsize "48th HIGHRS" }
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
		arranger = \arrangerSide
	}
}
