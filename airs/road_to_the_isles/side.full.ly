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
					\sideA s8

					\sideB s8
				}%End of side
			>>
		}
		\new PipeBandDrumStaff = "side2" \with {
			instrumentName = \markup{ \instrumentSide 2 }
			shortInstrumentName = \markup{ \shortInstrumentSide 2}
		} {
				s8 |
				s2 |
				s4 s8
				\sideMidTwo
				s8 |
				s2 |
				s4 s8
				\sideEndTwo
				s8
			
				
				s8 |
				s2 |
				s4 s8
				\sideMidTwo
				s8 |
				s2 |
				s4 s8
				\sideEndTwo
				s8
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
