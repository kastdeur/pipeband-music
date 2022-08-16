\version "2.19.0"

\include "lilydrum.ly"

\include "./config.ily"
%\include "./notes.bass.ily"
\include "./notes.tenor.ily"
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
					\part
					\repeat volta 2 {
						\measure
						s2.
					} \alternative {
						{ s4 | \halfline }
						{
						  s4 |
						  \halfline
						  \fine
						}
					}
					\bar "||"
					\break

					\part
					\line
					\dcalfine
					\bar "||"

				}%End of Format
				\new DrumVoice = "side" {
					\snareAupbeatA
					\snareAA
					\snareAB r8 \snareAupbeatB
					\removeWithTag #'tutti { r8. \snareAB s4 }

					r8 \snareBA
				}%End of side
			>>
		}
		\new PipeBandDrumStaff = "tenor" \with {
			instrumentName = \markup{ \instrumentTenor }
			shortInstrumentName = \markup{ \shortInstrumentTenor }
		} {
			\tenorglobal

			\drummode { g4 | }
			\tenorAA
			\tenorABA r4
			r8 g8 | \tenorABB s4

			r4 \tenorBA
		}
%{		\new PipeBandDrumStaff = "bass" \with {
			instrumentName = \markup{ \instrumentBass }
			shortInstrumentName = \markup{ \shortInstrumentBass}
		} {
			\bassglobal

		}
%}
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
