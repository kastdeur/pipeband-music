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

				}%End of Format
				\new DrumVoice = "side" {
					\repeat volta 2 {
						\unfoldRepeats 
						\snareA
					}
					\break
					\repeat volta 2 {
						\unfoldRepeats 
						\snareB
					}
					\break
					\repeat volta 2 {
						\unfoldRepeats 
						\snareC
					}
				}%End of side
			>>
		}
		\new PipeBandDrumStaff = "tenor" \with {
			instrumentName = \markup{ \instrumentTenor }
			shortInstrumentName = \markup{ \shortInstrumentTenor }
		} {
			\tenorglobal

			\repeat volta 2 {
				\unfoldRepeats 
				\tenorA
			}
			\break
			\repeat volta 2 {
				\unfoldRepeats 
				\tenorB
			}
			\break
			\repeat volta 2 {
				\unfoldRepeats 
				\tenorC
			}
		}
%{
		\new PipeBandDrumStaff = "bass" \with {
			instrumentName = \markup{ \instrumentBass }
			shortInstrumentName = \markup{ \shortInstrumentBass}
		} {
			\bassglobal

		}
%}
	>>
	\header {
		title = \title
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
