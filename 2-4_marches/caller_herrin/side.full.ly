\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"
mbreak = {\break}

sideIVoice = \new DrumVoice = "side" {
	\sideglobal
	\sideA s8
	\removeWithTag #'fine \sideB
}%Side

\include "./notes.side.shoc.ily"
sideIIVoice = \new DrumVoice = "side" {
	\sideglobal
	\sideA s8
	\removeWithTag #'fine \sideB
}%Side


\layout {
	indent = 8.0
	short-indent = 2.0
}

\score {
	\new StaffGroup <<
	    \new PipeBandDrumStaff \with {
		  instrumentName = "SHoH"
		}
		{
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
				\sideIVoice
			>>
		}
		\new PipeBandDrumStaff \with {
			instrumentName = "SHoC"
		}
		{
				\sideIIVoice
		}
	  >>
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
		arranger = \arrangerSide
	}
}
