\version "2.19.0"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"
\include "./notes.tenor.ily"
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
					\repeat volta 2 {
						\line
					} \alternative {
						\measure
						{\measure \measure}
					}
					\bar "|."
					\break
					\line \bar "|."

					\break
					\mark \markup \small "HaFaBra"
					\measure
					\measure
					\bar "|."

				}%End of Format
				\new DrumVoice = "side" {
					\repeat percent 9 {
						\snareAA
					}
					\snareRolls
					\repeat percent 3 \snareBA
					\snareRolls

					\snareHafabraEnd

				}%End of side
			>>
		}
		\new PipeBandDrumStaff = "tenor" {
			\tenorglobal
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }
				\repeat percent 9 {
					\tenorAA
				}
				\tenorRolls
				\repeat percent 4 \tenorBA

				\tenorHafabraEnd

		}
		\new PipeBandDrumStaff = "bass" {
			\bassglobal
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}
				\repeat percent 9 \bassAA
				\repeat unfold 2 \bassAA

				\repeat percent 4 { \bassAA \bassAA }

				\bassHafabraEnd

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
