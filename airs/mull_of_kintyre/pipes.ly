\version "2.18.2"

\include "bagpipe.ly"

\include "bagpipe.ly"

\include "config.ily"
\include "notes.pipes.ily"

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
					\once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
					\mark \markup { \small "D.C. al fine" }
					\measure
					\break

				}
				% Dunno
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
