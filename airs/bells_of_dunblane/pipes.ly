\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			\new NullVoice = "format" {
				\repeat volta 2 {
				  	\part
					\line
				}
				\break

				\part
				\line
				\bar "||"
				\line
				\bar "|."
				\break

				\part
				\line
				\bar "|."
			}%Format
			
			\new Voice = "pipes" {
				\pipesA s4

				\pipesBA \pipesBB s4

				\pipesC s4
			
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
			\pipesA		\pipesA
			\pipesBA	\pipesBB
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
