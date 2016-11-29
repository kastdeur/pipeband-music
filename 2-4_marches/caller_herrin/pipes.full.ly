\version "2.19.0"

\include "bagpipe.ly"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"
\include "./notes.pipes.seconds.ily"

\score {
	\new StaffGroup <<
		\new Staff = "pipes"  {
			\global
			\pipeglobal
			\bagpipeKey
			\set Staff.instrumentName = \markup{ \instrumentPipes }
			\set Staff.shortInstrumentName = \markup{ \shortInstrumentPipes }
			<<
				{
					\repeat volta 2 {
						\part \line
					}\break
	
					\part \halfline \line
	
					\repeat volta 2 {
						\halfline s2 s1
						}
					\alternative {
						{ s2 }
						{s2}
					}
				}%Format
				{
					\pipesA s8
	
					\pipesB

					\pipesC
					\pipesCA
					\pipesCB
				}%Pipes
			>>
		}
		\new Staff = "seconds" {
			\pipesSecglobal
			\bagpipeKey
			\set Staff.instrumentName = \markup{ \instrumentPipes Seconds }
			\set Staff.shortInstrumentName = \markup{ \shortInstrumentPipes 2nd}
			
			\pipesSecA s8

			\pipesSecB

			\pipesSecC
			\pipesSecCA
			\pipesSecCB
		}
	>>
	\header {
		title = \title
		meter = \meter
		composer = \markup \large {
			\column \right-align {
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \composerPipes  ":" }} #} )
				$(if (not (string=? "" composerPipessecnd))  #{ \markup {\line { \composerPipessecnd ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \instrumentPipes }}#} )
				$(if (not (string=? "" composerPipessecnd))  #{ \markup {\line { \instrumentPipessecnd }}#} )
			}
		}
	}
}
