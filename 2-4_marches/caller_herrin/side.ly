\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
		<<
			\new NullVoice = "format" {
				\repeat volta 2 {
					\part
					\halfline
					\mark \markup { \musicglyph "scripts.segno"}
					%\inStaffSegno
					\halfline
					\fine
				}
				\break

				\part
				\halfline
				\halfline
				\dsalfine
				\bar "||"
			} % Format
			\new DrumVoice = "side" {
				\sideglobal
				\sideA s8
				\removeWithTag #'fine \sideB
			}%Side
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
