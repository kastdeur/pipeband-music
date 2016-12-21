\version "2.19.0"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"
\include "./notes.tenor.ily"

\score {
	\new StaffGroup <<
<<<<<<< Updated upstream:strathspeys/molly_connell/drums.ly
		\new PipeBandDrumStaff = "side" {
			\global
			\sideglobal
			\set PipeBandDrumStaff.instrumentName = \markup \column {\instrumentSide}
			\set PipeBandDrumStaff.shortInstrumentName = \markup{\shortInstrumentSide}
				<<
				\new NullVoice = "format" {
					\mark \markup { \normalsize {Intro } }
					\emptyline
					\bar "|."
					
					\mark \markup { \normalsize {Tune } }
				  	\line \break
					\line \break
					\bar "|."
	
					\part \line \break
					\line \break
					\bar "|."
				}%Format
	
				\new DrumVoice = "side" {
					\intro
					\snareA s8
					\snareA s8
			
					\snareBA
					\snareBB
				
				}%Pipes
||||||| merged common ancestors
		\new PipeBandDrumStaff = "side" {
			\set PipeBandDrumStaff.instrumentName = \markup{\instrumentSide}
			\set PipeBandDrumStaff.shortInstrumentName = \markup{\shortInstrumentSide}

			\global
			<<
				{
					\line \break
					\line \break
					\bar "|."

					\part \line \break
					\part \line \break
					\bar "|."
			}%End of Format
				{
					\snareA
					s8
					\snareA
					s8

					\snareBA
					\snareBB
				}
=======
		\new PipeBandDrumStaff = "tenor" {
		  \global
			\tenorglobal
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }
<<
				\new NullVoice = "format" {
					\repeat volta 2 { \part \halfline \break \halfline } \break
					\part \halfline \break \halfline \bar "||" \break
					\line \bar "|."
				}%End of Format
				\new DrumVoice = "side" {
					r8 \tenorA s8

					\tenorB
					\tenorA s8
				}%End of side
>>>>>>> Stashed changes:2-4_marches/black_bear/mid.ly
			>>
<<<<<<< Updated upstream:strathspeys/molly_connell/drums.ly
||||||| merged common ancestors
		}
		\new PipeBandDrumStaff = "bass" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}
=======

		}
		\new PipeBandDrumStaff = "bass" {
			\bassglobal
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}
>>>>>>> Stashed changes:2-4_marches/black_bear/mid.ly

<<<<<<< Updated upstream:strathspeys/molly_connell/drums.ly
			}
		\new PipeBandDrumStaff = "tenor" {
			\tenorglobal
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }
	
			\emptyline
	
			\tenorA
			\tenorA
	
			s8 \tenorBA
			\tenorBB
||||||| merged common ancestors
			\bassAA
			\bassAB

			s8
			\bassAA
			s8
			\bassAB
		}
		\new PipeBandDrumStaff = "tenor" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }

			\tenorA
			\tenorA

			s8
			\tenorBA
			s8
			\tenorBB
=======
			r8 \bassA s8
			\bassB
			\bassA s8

>>>>>>> Stashed changes:2-4_marches/black_bear/mid.ly
		}
		\new PipeBandDrumStaff = "bass" {
			\bassglobal
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}
	
			\emptyline
	
			\bassAA
			\bassAB
	
			s8 \bassAA
			\bassAB
		}
	>>
	\layout {
		\context {
			\PipeBandDrumStaff
			\RemoveEmptyStaves
			\override VerticalAxisGroup.remove-first = ##t
		}
	}
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
