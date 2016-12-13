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
			>>

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
