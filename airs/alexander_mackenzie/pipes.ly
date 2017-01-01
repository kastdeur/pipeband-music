\version "2.18.2"

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
					\part \line
				}

				\break
				
				\part \line \bar "||"
				\break
				\part \line \bar "|."
			}%Format
			{
			\pipesAA
			\pipesAB s8

			\pipesBA 
			\pipesBB s8

			\pipesBA
			\pipesAB s8
			
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

		\pipesAA
		\pipesAB

		\pipesBA
		\pipesBB

		\pipesBA
		\pipesAB

	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
