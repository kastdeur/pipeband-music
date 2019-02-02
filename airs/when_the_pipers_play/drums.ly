\version "2.19.0"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"
\include "./notes.tenor.ily"
\include "./notes.side.ily"


\layout {
	indent = 6.0
	short-indent = 6.0
}
makePercent =
#(define-music-function (parser location note) (ly:music?)
   "Make a percent repeat the same length as NOTE."
   (make-music 'PercentEvent
               'length (ly:music-length note)))

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
					\partial 4 s4
					\repeat volta 2 {
						\halfline
						\measure
						\measure
						\measure
					}
					\alternative {
						{ \measure }
						{ \measure }
					}
					\bar "|."
				}%End of Format
				\new DrumVoice = "side" {
					\snareAA
					\snareAEndingI
					\snareAEndingII
				}%End of side
			>>
		}
		\new PipeBandDrumStaff = "tenor" \with {
			instrumentName = \markup{ \instrumentTenor }
			shortInstrumentName = \markup{ \shortInstrumentTenor }
		} {
			\tenorglobal
			s4
			\tenorA r4

		}
		\new PipeBandDrumStaff = "bass" \with {
			instrumentName = \markup{ \instrumentBass }
			shortInstrumentName = \markup{ \shortInstrumentBass}
		} {
			\bassglobal
			s4
			\bassA

		}
		\new PipeBandDrumStaff = "center" \with {
			instrumentName = \markup \right-column { "Center" \instrumentBass }
			shortInstrumentName = \markup{ "C.B.D." }
		} {
			\bassglobal
			s4
			\centerbassA
		}
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
