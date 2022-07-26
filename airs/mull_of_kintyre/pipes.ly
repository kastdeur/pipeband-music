\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

% From Svenax's bagpipemusic
markText = #(define-music-function (parser location text) (string?) #{
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \mark \markup $text
#})

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{
			  	\repeat volta 2 {
				  	% Refrain
					\repeat unfold 6 {	
					  \measure
					}
					\bar "||"
					\break
					% Couplet
					\repeat unfold 4 {
					  \measure
					}
					\break
					\repeat unfold 4 {
					  \measure
					}

					\measure
					\break

				}
				% Dunno
				\markText "Fine"
				\repeat unfold 6 {
				  \measure
				}
				\bar "|."
				
			}%Format
			{ 
			
				\pipesA
				\pipesB

				\pipesE
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
%\score {
%	\new Staff { \global \pipeglobal
%		\set Staff.midiInstrument = #"bagpipe"
%		%%Tune
%		\pipesA
%		\pipesB
%		\pipesA
%		\pipesB
%
%		\pipesE
%	}
%	\midi { \confTempo }
%	\header {
%		title = \title
%		meter = \meter
%		instrument = \instrumentPipes
%		composer = \composerPipes
%	}
%}
