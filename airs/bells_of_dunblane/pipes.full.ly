\version "2.19.0"

\include "config.ily"
\include "notes.pipes.ily"
\include "notes.pipes.seconds.ily"
%\include "notes.pipes.thirds.ily"

\score {
	\new StaffGroup <<
		\new Staff = "pipes"  {
			\global
			\pipeglobal
			\set Staff.instrumentName = \markup{ \instrumentPipes }
			\set Staff.shortInstrumentName = \markup{ \shortInstrumentPipes }
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
					\bar "||"
					\line
					\bar "|."
				}%Format
				\new Voice = "pipes" {
					\pipesA s4

					\pipesBA \pipesBB s4

					\pipesC \pipesC s4
				}%Pipes
			>>
		}
		\new Staff = "seconds" {
			\pipessecndglobal
			\set Staff.instrumentName = \markup{ \instrumentSecnd }
			\set Staff.shortInstrumentName = \markup{ \shortInstrumentPipes \shortInstrumentSecnd}
				\pipessecndA s4

				\pipessecndBA	\pipessecndBB s4
				
				\pipessecndCA	\pipessecndCB s4

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
				
				\pipesC	\pipesC
	
		}
		\new Staff = "seconds" {
			\pipessecndglobal
			\set Staff.midiInstrument = #"bagpipe"
			%% Seconds
				\pipessecndA \pipessecndA

				\pipessecndBA	\pipessecndBB
				
				\pipessecndCA	\pipessecndCB

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
