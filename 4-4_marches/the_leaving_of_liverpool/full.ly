\version "2.19.0"

\include "bagpipe.ly"
\include "lilydrum.ly"

\include "bagpipe.ly"
\include "lilydrum.ly"

\include "./config.ily"
%\include "./notes.bass.ily"
\include "./notes.tenor.ily"
\include "./notes.side.ily"
\include "./notes.pipes.ily"

\score {
	\new StaffGroup <<
		\new Staff {
			\global
			\pipeglobal
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentPipes }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentPipes }
			<<
				{
					\repeat unfold 2 {
						\partial 4 s4
						\line 
						\break
						\line \bar "|."
						\break
					}
				}%Format
				{
					\pipesAA
					\pipesAB s4

					\pipesBA
					\pipesBB
				}%Pipes
			>>
		}
		\new PipeBandDrumStaff = "side" {
			\sideglobal
			\set PipeBandDrumStaff.instrumentName = \markup \column {\instrumentSide}
			\set PipeBandDrumStaff.shortInstrumentName = \markup{\shortInstrumentSide}
			\snareA
			\snareA s4

			\snareBA
			\snareBB s4

		}
		\new PipeBandDrumStaff = "tenor" {
			\tenorglobal
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }
			
			\repeat unfold 2 {
				\repeat unfold 2 {
					r8. \tenorA
				}
				s4
			}

		}
%	\new PipeBandDrumStaff = "bass" {
%			\bassglobal
%			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
%			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}
%
%		}
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
