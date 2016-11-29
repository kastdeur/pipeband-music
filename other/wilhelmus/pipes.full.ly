\version "2.19.0"

\include "bagpipe.ly"

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
			  	\new NullVoice = "format" {
					\part
					\repeat unfold 7 \measure
					\bar "||"
					\break
					\part
					\repeat unfold 7 \measure
					\bar "|."
					\break

					\part
					\line
					\break
					\line
					\bar "|."
				}%Format
				\new Voice = "pipes" {
					\pipesA s4
					\pipesA s4

					\pipesB
				}%Pipes
			>>
		}
		\new Staff = "seconds" {
			\pipessecndglobal
			\set Staff.instrumentName = \markup{ \instrumentSecnd }
			\set Staff.shortInstrumentName = \markup{ \shortInstrumentPipes \shortInstrumentSecnd}
			
			\pipessecndAA s4
			\pipessecndAB s4

			\pipessecndB s4
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
			\pipesA
			\pipesA
			\pipesB
		}
		\new Staff = "seconds" {
			\pipessecndglobal
			\set Staff.midiInstrument = #"bagpipe"
			%% Seconds
			\pipessecndAA
			\pipessecndAB

			\pipessecndB
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
