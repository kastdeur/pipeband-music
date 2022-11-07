\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.tenor.ily"

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
			}%Format
			\new DrumVoice = "tenor" {
				\tenorglobal
				\tenorA s8
				\removeWithTag #'fine \tenorB
			}%Tenor
		>>
	}
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		instrument = \instrumentTenor
		composer = \composerTenor
		arranger = \arrangerTenor
	}
}
