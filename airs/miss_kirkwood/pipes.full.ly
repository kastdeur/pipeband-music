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
				{
				  	\repeat volta 2 {
						\part \line 
					}
					\break
					\repeat volta 2 {
						\part \line 
			  		}
				}%Format
				{ 
					\pipesA s8

					\pipesB s8
				}
			>>
		}
		\new Staff = "seconds" {
			\pipessecndglobal
			\set Staff.instrumentName = \markup{ \instrumentPipes Seconds }
			\set Staff.shortInstrumentName = \markup{ \shortInstrumentPipes 2nd}

			\pipessecndA s8

			\pipessecndB s8

		}
%		\new Staff = "thirds" {
%			\pipesthrdglobal
%			\set Staff.instrumentName = \markup{ \instrumentPipes Thirds }
%			\set Staff.shortInstrumentName = \markup{ \shortInstrumentPipes 3rd }
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

			\partial 8
			\pipesA
			\pipesA
			\pipesB
			\pipesB
		}
		\new Staff = "seconds" {
			\pipessecndglobal
			\set Staff.midiInstrument = #"bagpipe"
			%% Seconds

			%\partial 8
			\pipessecndA
			\pipessecndA
			\pipessecndB
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
