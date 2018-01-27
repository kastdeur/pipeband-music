\version "2.19.0"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"
\include "./notes.pipes.seconds.ily"
%\include "./notes.pipes.thirds.ily"

mbreak = \break
\score {
	\new StaffGroup <<
		\new Staff = "pipes" \with{
			instrumentName = \markup{ \instrumentPipes }
			shortInstrumentName = \markup{ \shortInstrumentPipes }
		} {
			\global
			\pipeglobal
			<<
			  	\new NullVoice = "format" {
					\part \halfline \mbreak \halfline \bar "||"
					\break
					\halfline \mbreak \halfline \bar "|."
				}%Format
				\new Voice = "pipes" {
					\pipesA
					\pipesB					
				}%Pipes
			>>
		}
		\new Staff = "seconds" \with {
			instrumentName = \markup{ \instrumentPipes \instrumentSecnd }
			shortInstrumentName = \markup{ \shortInstrumentPipes \shortInstrumentSecnd}
		} {
			\pipessecndglobal
			\pipessecndAA
			\pipessecndAB

			\pipessecndBA
			\pipessecndBB			
		}
%		\new Staff = "thirds" \with {
%			instrumentName = \markup{ \instrumentPipes \instrumentThrd }
%			shortInstrumentName = \markup{ \shortInstrumentPipes \shortInstrumentThrd}
%		} {
%			\pipesthrdglobal
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
			\partial 4. \pipesA
			\pipesB
		
		}
		\new Staff = "seconds" {
			\pipessecndglobal
			\set Staff.midiInstrument = #"bagpipe"
			%% Seconds
			\partial 4. \pipessecndAA \pipessecndAB
			\pipessecndBA \pipessecndBB

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
