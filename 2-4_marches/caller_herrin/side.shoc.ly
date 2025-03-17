\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.shoc.ily"

mbreak = {\break}
\score {
    \new PipeBandDrumStaff {
        \global
		<<
			\new NullVoice = "format" {
				\repeat segno 2 {
					\repeat volta 2 {
						\part
						\halfline
						\volta 2 { \segnoMark \default }
						\halfline
						\volta 2 { \fine }
					}

					\volta 1 {
						\allowBreak
						\mbreak
						\part
						\halfline
						\halfline
						\bar "||"
					}
				}
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
