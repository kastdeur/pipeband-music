\version "2.19.0"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"
\include "./notes.pipes.seconds.ily"

\score {
	\new StaffGroup <<
		\new Staff = "pipes"  {
			\global
			\pipeglobal
			\set Staff.instrumentName = \markup{ \instrumentPipes }
			\set Staff.shortInstrumentName = \markup{ \shortInstrumentPipes }
			<<
				{
					\part \halfline \halfline \bar "|." \break

					\part \halfline \halfline \bar "|."
				}%Format
				{
					\pipesA
					\pipesB s4

					\pipesB
					\pipesBB s4
				}%Pipes
			>>
		}
		\new Staff = "seconds" {
			\pipessecndglobal
			\set Staff.instrumentName = \markup{ \instrumentPipes Seconds }
			\set Staff.shortInstrumentName = \markup{ \shortInstrumentPipes 2nd}
			\pipessecndAA
			\pipessecndAB s4

			\pipessecndBA
			\pipessecndBB s4
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
\score {
	\new StaffGroup <<
		\global
		\new Staff = "pipes"  {
			\pipeglobal
			\set Staff.midiInstrument = #"bagpipe"
	
			\partial 4
			\pipesA
			\pipesB 
	
			\pipesB
			\pipesBB 
		
		}
		\new Staff = "seconds" {
			\pipessecndglobal
			\set Staff.midiInstrument = #"bagpipe"
		
			\pipessecndAA
			\pipessecndAB 

			\pipessecndBA
			\pipessecndBB 
		}
	>>
	\midi { \confTempo }
}
