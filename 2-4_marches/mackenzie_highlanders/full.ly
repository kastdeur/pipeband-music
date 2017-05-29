\version "2.19.0"

\include "bagpipe.ly"
\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"
\include "./notes.tenor.ily"
\include "./notes.side.ily"
\include "./notes.pipes.ily"

\score {
	\new StaffGroup <<
		\new Staff {
			\global
			\pipeglobal
			\set Staff.instrumentName = \markup{ \instrumentPipes }
			\set Staff.shortInstrumentName = \markup{ \shortInstrumentPipes }
			<<
				{
				\repeat volta 2 {
					\part \line
				}\break

				\part \line \bar "||" \break
				\line \bar "|."
				}%Format
				{
				\pipesA s8

				\pipesB
				\pipesBA
		
				\pipesB
				\pipesBB
				}%Pipes
			>>
		}
		\new PipeBandDrumStaff = "side" {
			\sideglobal
			\set Staff.instrumentName = \markup \column {\instrumentSide}
			\set Staff.shortInstrumentName = \markup{\shortInstrumentSide}

			\snareA s8
		
			\snareBA
		
			\snareBB

		}
		\new PipeBandDrumStaff = "tenor" {
			\tenorglobal
			\set Staff.instrumentName = \markup{ \instrumentTenor }
			\set Staff.shortInstrumentName = \markup{ \shortInstrumentTenor }
			
			\tenorA s8

			\tenorBA
		
			\tenorBB s8
		}
		\new PipeBandDrumStaff = "bass" {
			\bassglobal
			\set Staff.instrumentName = \markup{ \instrumentBass }
			\set Staff.shortInstrumentName = \markup{ \shortInstrumentBass}

			s8 \bassA
			
			s8 \bassBA 
		
			\bassBB
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
