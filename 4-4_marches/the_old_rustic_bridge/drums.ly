\version "2.24.1"

\include "lilydrum.ly"

\include "./config.ily"
%\include "./notes.bass.ily"
\include "./notes.tenor.ily"
\include "./notes.side.ily"

\layout {
	indent = 5.0
	short-indent = 2.0
}
mBreak = {\break}

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "side" \with {
			instrumentName = \markup{ \instrumentSide }
			shortInstrumentName = \markup{ \shortInstrumentSide }
		} {
			\global
			<<
				\new NullVoice = "format" {
					\part
					\repeat segno 2 {
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

						\volta 2 \fine
						\volta 1 {
							\allowBreak
							\mBreak
							\section
							\part
							\line
							\section
						}
					}
				}%End of Format
				\new DrumVoice = "side" {
					\sideglobal
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

			s4 |
			\tenorAA
			\tenorABA r4
			r8 g8 | \tenorABB s4

			r4 \tenorBA
			\section
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
