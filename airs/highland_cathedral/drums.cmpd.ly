\version "2.19.0"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"
\include "./notes.tenor.cmpd.ily"
\include "./notes.side.ily"

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "side" {
			\global
			\sideglobal
			\set PipeBandDrumStaff.instrumentName = \markup{\instrumentSide}
			\set PipeBandDrumStaff.shortInstrumentName = \markup{\shortInstrumentSide}

			<<
				\new NullVoice = "format" {
					\line
					\bar "||"
					\break
					
					\line
					\measure
					\measure
					\bar "||"
					\break
					
					\line \bar "|."
				}%End of Format
				\new DrumVoice = "side" {
					\repeat percent 8 \snareAA
					\repeat percent 7 \snareAA
					\snareRolls

					\repeat percent 4 \snareBA
					\flam d1

				}%End of side
			>>
		}
		\new PipeBandDrumStaff = "tenor" {
			\tenorglobal
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }
			\tenorA

			\tenorB

			\tenorC

			d1^\andrewStop
		}
		\new PipeBandDrumStaff = "bass" {
			\bassglobal
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}
				\repeat percent 8 \bassAA
				\repeat percent 7 \bassAA
				\repeat unfold 2 \bassAA

				\repeat percent 4 { \bassAA \bassAA }
				d1->
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
