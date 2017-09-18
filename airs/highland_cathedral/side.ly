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
					\line
				} \alternative {
					\measure
					{\measure \measure}
				}
				\bar "|."
				\break
				\line \bar "|."

				\break
				\mark \markup \small "HaFaBra"
				\measure
				\measure
				\bar "|."
			}%Format
			
			\new DrumVoice = "side" {
				\repeat percent 9 {
					\snareAA
				}
				\snareRolls
				\repeat percent 3 \snareBA
				\snareRolls

				\snareHafabraEnd

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
