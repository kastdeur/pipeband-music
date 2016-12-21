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
				\repeat volta 2 {
					\part
					\line \break
					\line \break
				}
				\part \line \break
				\line \break
				\line \break
			}
			{ 
				\pipesA

				\pipesBA
				\pipesBB
				\pipesBC
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
		\pipesBA
		\pipesBB
		\pipesBC
	}
	\midi { \confTempo }
}
