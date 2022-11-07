\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"

\score {
    \new PipeBandDrumStaff {
        \global
		<<
			\new NullVoice = "format" {
					\repeat volta 2 {
						\halfline
						\mark \markup { \musicglyph "scripts.segno"}
						\inStaffSegno
						\halfline
						\fine
					}
					\break

					\halfline
					\halfline
					\dsalfine
					\bar "||"
			}%Format
			\new DrumVoice = "bass" {
				\bassglobal
				\bassA
				\removeWithTag #'fine \bassB
			}%Bass
		>>
	}
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		instrument = \instrumentBass
		composer = \composerBass
		arranger = \arrangerBass
	}
}
