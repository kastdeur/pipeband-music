\version "2.19.0"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"
\include "./notes.tenor.ily"

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "tenor" \with {
			instrumentName = \markup{ \instrumentTenor }
			shortInstrumentName = \markup{ \shortInstrumentTenor }
		} {
			\tenorglobal
			\global
			<<
				\new NullVoice = "format"{
					\repeat volta 2 {
				  		\halfline
					}
					\break
					\repeat volta 2 {
						\halfline
					}
				}%Format
				{
					\tenorA

					\tenorB
				}%Music
			>>
		}
		\new PipeBandDrumStaff = "bass" \with {
			instrumentName = \markup{ \instrumentBass }
			shortInstrumentName = \markup{ \shortInstrumentBass }
		} {
			\bassglobal

			\bassA

			\bassB
		}
	>>
	\header {
		title = \title
		meter = \meter
		composer = \markup {
			\column \right-align {
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \composerTenor  ":" }} #} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \composerBass  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \instrumentTenor }}#} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \instrumentBass }}#} )
			}
		}
	}
}
