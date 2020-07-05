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
		\new Staff \with {
			instrumentName = \markup{ \instrumentPipes }
			shortInstrumentName = \markup{ \shortInstrumentPipes }
		} {
			\global
			\pipeglobal

			\repeat volta 2 { \partial 8 \pipesA s8 }
			\break
			\repeat volta 2 { \partial 8 \pipesB s8 }
			\break
			\repeat volta 2 { \partial 8 \pipesC s8 }
		}
		\new Staff = "seconds" \with {
			instrumentName = \markup{ \instrumentPipes \instrumentSecnd }
			shortInstrumentName = \markup{ \shortInstrumentPipes \shortInstrumentSecnd }
		} {
			\pipessecndglobal
			
				\pipessecndA s8
				\pipessecndB s8
				\pipessecndC s8
				
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
		arranger = \markup \large {
			\column \right-align {
				$(if (not (string=? "" arrangerPipes))  #{ \markup {\line { \arrangerPipes  ":" }} #} )
				$(if (not (string=? "" arrangerPipessecnd))  #{ \markup {\line { \arrangerPipessecnd ":" }} #} )
				$(if (not (string=? "" arrangerPipesthrd))  #{ \markup {\line { \arrangerPipesthrd  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" arrangerPipes))  #{ \markup {\line { \instrumentPipes }}#} )
				$(if (not (string=? "" arrangerPipessecnd))  #{ \markup {\line { \instrumentPipessecnd }}#} )
				$(if (not (string=? "" arrangerPipesthrd))  #{ \markup {\line { \instrumentPipesthrd }}#} )
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
        	\pipesB
        	\pipesC

		}
		\new Staff = "seconds" {
			\pipessecndglobal
			\set Staff.midiInstrument = #"bagpipe"
			%% Seconds
			\partial 8
			\pipessecndA
			\pipessecndB
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
		arranger = \arrangerPipes
	}
}
