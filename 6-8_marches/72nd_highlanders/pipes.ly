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
			\new NullVoice = "format" {
				\repeat volta 2 {
					\part
				  	\line
				}
				\break
				\repeat volta 2 {
				  	\part
					\halfline
				}\alternative{
				  	\halfline
					\halfline
				}
				\bar "|."
				\break
				\repeat volta 2 {
				  	\part
				  	\line
				}
			}%Format
			
			\new Voice = "pipes" {
				\pipesA s4

				\pipesBA
				\pipesBBA s4
				\pipesBBB s4

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

		\pipesA
		\pipesA

		\pipesBA \pipesBBA
		\pipesBA \pipesBBB

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
