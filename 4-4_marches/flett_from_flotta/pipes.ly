\version "2.18.2"

\include "config.ily"
\include "notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{
				\repeat volta 2 {
					\partial 4 s4
					\line \break
					\line \break 
				}
				\repeat volta 2 {
					\partial 4 s4
					\line \break
					\line \break
				}
			}
			{
				\pipesA s4

			 	\pipesB s4
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
		\partial 4
		\pipesA
		\pipesA

		\pipesB
		\pipesB
	}
	\midi { \confTempo }
}