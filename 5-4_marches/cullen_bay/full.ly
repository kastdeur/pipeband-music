\version "2.19.0"

\include "bagpipe.ly"
\include "lilydrum.ly"

\include "bagpipe.ly"
\include "lilydrum.ly"

\include "config.ily"
\include "notes.bass.ily"
\include "notes.tenor.ily"
\include "notes.side.ily"
\include "notes.pipes.ily"

\score {
	\new StaffGroup <<
		\global
		\new Staff {
			\pipeglobal
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentPipes }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentPipes }
			<<
				\global
				{
					\repeat unfold 4 {
						\line \bar "||"	\break
						\line \bar "|." \break
					}		
				}%Format
				{
					\repeat unfold 2 { \pipesA }
					\repeat unfold 2 { \pipesB }
					\repeat unfold 2 { \pipesC }
					\repeat unfold 2 { \pipesD }
				}%Pipes
			>>
		}
		\new PipeBandDrumStaff = "side" {
			\set PipeBandDrumStaff.instrumentName = \markup \column {\instrumentSide}
			\set PipeBandDrumStaff.shortInstrumentName = \markup{\shortInstrumentSide}
			\repeat unfold 2 { \snareA }
			\repeat unfold 2 { \snareB }
			\repeat unfold 2 { \snareC }
			\repeat unfold 2 { \snareD }

		}
		\new PipeBandDrumStaff = "tenor" {
			\tenorglobal
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }

			\repeat unfold 4 {
				\tenorAA
				\tenorAB
			}
		}
		\new PipeBandDrumStaff = "bass" {
			\bassglobal
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}
			\repeat unfold 4 {
				\bassAA
				\bassAB
			}

		}
	>>
	\header {
		title = \title
		meter = \meter
		composer = \markup \large {
			\column \right-align {
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \composerPipes  ":" }} #} )
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \composerSide  ":" }} #} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \composerTenor  ":" }} #} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \composerBass  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \instrumentPipes }}#} )
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \instrumentSide }}#} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \instrumentTenor }}#} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \instrumentBass }}#} )
			}
		}
	}
}
