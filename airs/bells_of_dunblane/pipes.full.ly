\version "2.19.0"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"
\include "./notes.pipes.seconds.ily"
%\include "./notes.pipes.thirds.ily"

\layout {
	indent = 8.0
	short-indent = 2.0
}

\score {
	\new StaffGroup <<
		\new Staff = "pipes"  \with {
			instrumentName = \markup{ \instrumentPipes }
			shortInstrumentName = \markup{ \shortInstrumentPipes }
		} {
			\global
			\pipeglobal
			<<
			  	\new NullVoice = "format" {
					\repeat volta 2 {
					  	\part
						\line
					}
					\break

					\part
					\line 
					\bar "||"
					\line
					\bar "|."
					\break

					\part
					\line
					\bar "|."
				}%Format
				\new Voice = "pipes" {
					\pipesA s4

					\pipesBA \pipesBB s4

					\pipesC s4
				}%Pipes
			>>
		}
		\new Staff = "seconds" \with {
			instrumentName = \markup{ \instrumentSecnd }
			shortInstrumentName = \markup{ \shortInstrumentPipesSecnd}
		} {\pipessecndglobal
				\pipessecndA s4

				\pipessecndB	\pipessecndB s4
				
				\pipessecndC s4

		}
%		\new Staff = "thirds" {
%			\pipesthrdglobal
%			\set Staff.instrumentName = \markup{ \instrumentPipes \instrumentThrd }
%			\set Staff.shortInstrumentName = \markup{ \shortInstrumentPipes \shortInstrumentThrd }
%
%		}
	>>
	\header {
		title = \title
		meter = \meter
		composer = \markup \large {
			\column \right-align {
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \composerPipes  ":" }} #} )
				$(if (not (string=? "" composerPipessecnd))  #{ \markup {\line { \composerPipessecnd ":" }} #} )
				$(if (not (string=? "" composerPipesthrd))  #{ \markup {\line { \composerPipesthrd  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \instrumentPipes }}#} )
				$(if (not (string=? "" composerPipessecnd))  #{ \markup {\line { \instrumentPipessecnd }}#} )
				$(if (not (string=? "" composerPipesthrd))  #{ \markup {\line { \instrumentPipesthrd }}#} )
			}
		}
	}
}
\score {
	\new StaffGroup <<
		\global
		\new Staff = "pipes" {
			\pipeglobal
			\set Staff.midiInstrument = #"bagpipe"
			%%Tune
				\partial 4
				\pipesA \pipesA

				\pipesBA \pipesBB
				
				\pipesC
	
		}
		\new Staff = "seconds" {
			\pipessecndglobal
			\set Staff.midiInstrument = #"bagpipe"
			%% Seconds
				\pipessecndA \pipessecndA

				\pipessecndB	\pipessecndB
				
				\pipessecndC

		}
%		\new Staff = "thirds" {
%			\pipesthrdglobal
%			\set Staff.midiInstrument = #"bagpipe"
%			%% Thirds
%		
%		}
	>>
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
