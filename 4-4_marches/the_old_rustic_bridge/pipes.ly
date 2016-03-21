\version "2.18.2"

\include "config.ily"
\include "notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			{ 
				\part
				\line \break
				\line \bar "|." \break

				\part
				\line \break
				\line \bar "|."
			}%Format
			{ 
				\pipesAA
				\pipesAB s4

				\pipesBA
				\pipesAB s4
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
		\pipesAA
		\pipesAB

		\pipesBA
		\pipesAB
	}
	\midi { \confTempo }
}
