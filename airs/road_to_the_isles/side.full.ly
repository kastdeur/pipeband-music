\version "2.19.0"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "side" \with {
			instrumentName = \markup{ \instrumentSide }
			shortInstrumentName = \markup{ \shortInstrumentSide }
		} {
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
				
				}%End of Format
				\new DrumVoice = "side" {
					\sidePI
					<<
						\sideMid
						\context PipeBandDrumStaff = "side2" {
							\sideMidII
						}
					>>
					\sidePI
					<<
						\sideEnd
						\context PipeBandDrumStaff = "side2" {
							\sideEndII
						}
					>> s8

					\sidePII
					\sideMid
					\sidePII
					\sideEnd s8
				}%End of side
			>>
		}
		\new PipeBandDrumStaff = "side2" \with {
			instrumentName = \markup{ \instrumentSide LD }
			shortInstrumentName = \markup{ \shortInstrumentSide LD }
			\RemoveAllEmptyStaves
		} {
			s8 | s1*4
		}
	>>
	\header {
		title = \title
		meter = \meter
		composer = \markup {
			\column \right-align {
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \composerSide  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \instrumentSide }}#} )
			}
		}
	}
}
