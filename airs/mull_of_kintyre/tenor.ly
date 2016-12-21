\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
	\global
	\tenorglobal
	<<
			\new NullVoice = "format" {
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
			
			\new DrumVoice = "tenor" {
				\tenorA
				\tenorB

				\tenorE
			}
	>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentTenor
		composer = \composerTenor
	}
}
