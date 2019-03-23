\version "2.19.0"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.side.ily"

\layout {
	indent = 5.0
	short-indent = 2.0
}

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
					\halfline
					\bar ""
				} \alternative {
					{ \part \halfline }
					{ \part \halfline }
				}

				}%End of Format
				\new DrumVoice = "side" {
					\sidePI
					<<
						\sideMid
						\context PipeBandDrumStaff = "sideLD" {
							\sideMidII
						}
					>>
					\sidePI
					<<
						\sideEnd
						\context PipeBandDrumStaff = "sideLD" {
							\sideEndII
						}
					>> s8

					\sidePII
					<<
						\sideMid
						\context PipeBandDrumStaff = "sideLD" {
							\sideMidII
						}
					>> s8
					\sidePII
					<<
						\sideEnd
						\context PipeBandDrumStaff = "sideLD" {
							\sideEndII
						}
					>> s8
					\sidePI
					<<
						\sideEnd
						\context PipeBandDrumStaff = "sideLD" {
							\sideEndII
						}
					>> s8
				}%End of side
			>>
		}
		\new PipeBandDrumStaff = "sideLD" \with {
			instrumentName = \markup \center-column { LD \instrumentSide }
			shortInstrumentName = \markup{ L.D. }
			\RemoveAllEmptyStaves
		} {
			s8 | s1*4
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
