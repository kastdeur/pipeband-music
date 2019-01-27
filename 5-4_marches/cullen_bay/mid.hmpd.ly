\version "2.19.0"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.hmpd.ily"
\include "./notes.tenor.hmpd.ily"


title = \markup { \title \normalsize "(HMPD)" }

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "tenor" \with {
			instrumentName = \markup{ \instrumentTenor }
			shortInstrumentName = \markup{ \shortInstrumentTenor }
		} {
			\tenorglobal
			\global
			<<
				{
					\repeat volta 2 { \line }  \break
					\repeat volta 2 { \line }  \break
					\repeat volta 2 { \line }  \break
					\repeat volta 2 { \line }  \break
				}%Format
				{
					\tenorA
					\tenorB
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
			\bassA
			\bassA
			\bassA
		}
	>>
	\header {
		title = \markup \column { \title \smaller "Holland Massed P&D" }
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
