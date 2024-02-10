\version "2.19.0"

\include "bagpipe.ly"
\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.bass.ily"
\include "./notes.tenor.ily"
\include "./notes.side.ily"
\include "./notes.pipes.ily"
\include "./notes.pipes.seconds.ily"

\layout {
	indent = 5.0
	short-indent = 2.0
}


\score {
	\new StaffGroup <<
		\new Staff \with {
			instrumentName = \markup{ \instrumentPipes }
			shortInstrumentName = \markup{ \shortInstrumentPipes }
		} {
			\global
			\pipeglobal
			<<
				{
					\repeat volta 2 {
					  \part \line
					}
					\break

					\part \halfline 
					\break 
					\halfline \bar "||"
					
					\break
					\part \halfline 
					\break 
					\halfline \bar "|."
				}%Format

				{
					\pipesAA
					\pipesAB s8

					\pipesBA
					\pipesBB s8
					
					\pipesBA
					\pipesAB s8

				}%Pipes
			>>
		}
		\new Staff = "seconds" \with {
			instrumentName = \markup{ \instrumentPipesHarmony }
			shortInstrumentName = \markup{ \shortInstrumentPipesSecnd }
		} <<
		    {
				\global
				\pipessecndglobal
				\part
			} {
			\pipessecndA s8

			\pipessecndBA
			\pipessecndBBA s8

			\pipessecndBA
			\pipessecndBBB s8
		    }
		>>
		\new PipeBandDrumStaff = "side" \with {
			instrumentName = \markup \column {\instrumentSide}
			shortInstrumentName = \markup{\shortInstrumentSide}
		} {
			\sideglobal
			\snareAA \snareAB s8

			\snareBA 
			\snareBB s8
			
			\removeWithTag #'tutti {
			\snareBA \snareAB s8
			}
		}
		\new PipeBandDrumStaff = "tenor" \with {
			instrumentName = \markup{ \instrumentTenor }
			shortInstrumentName = \markup{ \shortInstrumentTenor }
		} {
			\tenorglobal

			s8 \tenorAA \tenorAB s8

			\tenorBA 
			\tenorBB s8
			
			\tenorBA r8 \tenorAB s8
		}
		\new PipeBandDrumStaff = "bass" \with {
			instrumentName = \markup{ \instrumentBass }
			shortInstrumentName = \markup{ \shortInstrumentBass}
		} {
			\bassglobal
			
			s8 \bassAA \bassAB
			s8 \bassBA \bassBB
			s8 \bassBA \bassAB
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
