\version "2.19.0"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"
\include "./notes.tenor.ily"
\include "./notes.side.ily"


\layout {
	indent = 5.0
	short-indent = 2.0
}

mbreak = {\break}

timing = \new NullVoice = "format" {
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

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "side" \with {
			instrumentName = \markup{ \instrumentSide }
			shortInstrumentName = \markup{ \shortInstrumentSide }
		} {
			\global
			<<
				\timing
				\new DrumVoice = "side" {
					\sideglobal
					\sideA s8
					\removeWithTag #'fine \sideB
				}%End of side
			>>
		}
		\new PipeBandDrumStaff = "tenor" \with {
			instrumentName = \markup{ \instrumentTenor }
			shortInstrumentName = \markup{ \shortInstrumentTenor }
		} {
			\tenorglobal
			<< \timing
			{
				\tenorA s8
				\removeWithTag #'fine \tenorB
			} >>
		}
		\new PipeBandDrumStaff = "bass" \with {
			instrumentName = \markup{ \instrumentBass }
			shortInstrumentName = \markup{ \shortInstrumentBass }
		} {
			\bassglobal
			<< \timing
			{
				s8 \bassA
				s8 \removeWithTag #'fine \bassB
			} >>
		}
	>>
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		composer = \markup {
			\column \right-align {
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \composerSide  ":" }} #} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \composerTenor  ":" }} #} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \composerBass  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \instrumentSide }}#} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \instrumentTenor }}#} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \instrumentBass }}#} )
			}
		}
	}
}
