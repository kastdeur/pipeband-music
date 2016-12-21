\version "2.18.2"

\include "lilydrum.ly"

\include "./config.ily"
\include "./notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
	\global
	\tenorglobal
	<<
			{
				\repeat volta 2 {
					\part \line
				}

				\break
				\part \line 
				\bar "||" \break
				\line \bar "|."
			
			}%Format
			{
				r8 \tenorA  s8

				\tenorB
				\tenorA s8
			
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

midiTenor = midiDrumPitches
midiTenor.right-hand = \tenorDefault
midiTenor.left-hand = \tenorDefault
\score {
	\new PipeBandDrumStaff 
	\with {
		drumPitchTable = #(alist->hash-table midiTenor)
	}
	{ \global \tenorglobal
		%%Tune
		\tenorA 
		r8 \tenorA
		
		\tenorB
		\tenorA r8
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
