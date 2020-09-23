\version "2.19.0"

\include "lilydrum.ly"

\include "./config.ily"
%\include "./notes.bass.ily"
\include "./notes.tenor.ily"
\include "./notes.side.ily"


\layout {
	indent = 8.0
	short-indent = 3.0
}

#(set-global-staff-size 19)
halfbreak = {  \break }

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
					\repeat unfold 2 {
						\part
						\halfline
						\halfline
						\bar "||"
						\break
					}
					\pageBreak
					\repeat unfold 2 {
						\part
						\halfline
						\halfline
						\bar "||"
						\break
					}
					\bar "|."
				}
				\new DrumVoice = "side" {
					\snareAA r8
					\snareAB s8

					\snareBA r8
					\snareBB s8

					\snareCA r8
					\snareCB s8

					\snareDA r8
					\snareDB s8
				}
			>>
		}
		\new PipeBandDrumStaff = "tenor" \with {
			instrumentName = \markup{ \instrumentTenor }
			shortInstrumentName = \markup{ \shortInstrumentTenor }
		} {
			\tenorglobal

			\tenorA s8
			\tenorB s8
			\tenorC s8
			\tenorD s8

		}
		%\new PipeBandDrumStaff = "bass" \with {
		%	instrumentName = \markup{ \instrumentBass }
		%	shortInstrumentName = \markup{ \shortInstrumentBass}
		%} {
		%	\bassglobal
		%}
	>>
	\header {
		title = \title
		subtitle = \subtitle
		meter = \meter
		info = \info
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
