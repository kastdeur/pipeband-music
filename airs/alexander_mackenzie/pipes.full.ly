\version "2.19.0"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"
\include "./notes.pipes.seconds.ily"
%\include "./notes.pipes.thirds.ily"

\score {
	\new StaffGroup <<
		\new Staff = "pipes"  {
			\global
			\pipeglobal
			\set Staff.instrumentName = \markup{ \instrumentPipes }
			\set Staff.shortInstrumentName = \markup{ \shortInstrumentPipes }
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
		\new Staff = "seconds" {
			\pipessecndglobal
			\set Staff.instrumentName = \markup{ \instrumentPipes Seconds }
			\set Staff.shortInstrumentName = \markup{ \shortInstrumentPipes 2nd}
			\pipessecndA s8

			\pipessecndBA
			\pipessecndBBA s8

			\pipessecndBA
			\pipessecndBBB s8
		}
%		\new Staff = "thirds" {
%			\pipesthrdglobal
%			\set Staff.instrumentName = \markup{ \instrumentPipes Thirds }
%			\set Staff.shortInstrumentName = \markup{ \shortInstrumentPipes 3rd }
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
					\pipesAA
					\pipesAB

					\pipesAA
					\pipesAB

					\pipesBA
					\pipesBB
					
					\pipesBA
					\pipesAB
	
		}
		\new Staff = "seconds" {
			\pipessecndglobal
			\set Staff.midiInstrument = #"bagpipe"
			%% Seconds
			\pipessecndA

			\pipessecndBA
			\pipessecndBBA

			\pipessecndBA
			\pipessecndBBB
		}
%		\new Staff = "thirds" {
%			\pipesthrdglobal
%			\set Staff.midiInstrument = #"bagpipe"
%			%% Thirds
		
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
