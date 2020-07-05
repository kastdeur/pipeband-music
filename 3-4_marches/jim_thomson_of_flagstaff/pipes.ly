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
					\halfline
					\measure \measure \measure 
				}\alternative{
				  	\measure
					\measure
				}
				\bar "|."
				\break

				\repeat volta 2 {
					\part |
					\measure |
					\measure |
					\measure |
				}\alternative{
					{
					  \measure
					  \halfline
					}
					{
					  \measure
					  \halfline
					}
				}
				\bar "|."
			}%Format
			
			\new Voice = "pipes" {
				\pipesA
				\pipesABA
				\pipesABB s8

				\pipesBA
				\pipesBBA s8
				\pipesBBB
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
		\pipesA \pipesABA
		\pipesA \pipesABB

		\pipesBA \pipesBBA
		\pipesBA \pipesBBB

	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
