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
					\part \line \break
					\line \bar "|." \break
					}
				\repeat volta 2 { 
					\part \line \break
					\line \bar "|." \break
					}
			}
			{
				\pipesAA
				\pipesAB s4

				\pipesBA
				\pipesBB s4
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
		\repeat volta 2 { \pipesAA \pipesAB }
		\repeat volta 2 { \pipesBA \pipesBB }
	}
	\midi { \confTempo }
}