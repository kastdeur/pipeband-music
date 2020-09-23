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
					\part
					\halfline
					\break
					\halfline
					\bar "||"
					\break
				}
				\repeat unfold 2 {
					\part
					\halfline
					\break
					\halfline
					\bar "||"
					\break
				}
				\bar "|."
			}%Format

			\new DrumVoice = "tenor" {
				\tenorA s8
				\tenorB s8
				\tenorC s8
				\tenorD s8
			}
		>>
	}
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		info = \info
		instrument = \instrumentTenor
		composer = \composerTenor
		arranger = \arrangerTenor
	}
}
