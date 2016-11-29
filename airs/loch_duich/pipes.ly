\version "2.18.2"

\include "bagpipe.ly"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{ 
				\repeat unfold 3 {
				  \repeat volta 2 {
					\part \line
					\break
				  }
				}
			}%Format
			{ 
				\pipesA s8

				\pipesB s8

				\pipesC s8
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
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
			\partial 8
				\pipesA
				\pipesA

				\pipesB
				\pipesB

				\pipesC
				\pipesC
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
