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
				\break
				\repeat volta 2 {
				  	\part
					\halfline
				}\alternative{
				  	\halfline
					\halfline
				}
				\bar "|."

			}%Format
			
			\new Voice = "pipes" {
				\pipesAA
				\pipesAB s8

				\pipesBA
				\pipesBB s8
				\pipesAB s8

				\pipesCA
				\pipesCB s8

				\pipesDA
				\pipesDB s8
				\pipesCB s8
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
		arranger = \arrangerPipes
	}
}
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\partial 8
		\pipesAA
		\pipesAB
		\pipesAA
		\pipesAB

		\pipesBA
		\pipesBB
		\pipesBA
		\pipesAB
		
		\pipesCA
		\pipesCB
		\pipesCA
		\pipesCB

		\pipesDA
		\pipesDB
		\pipesDA
		\pipesCB
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
		arranger = \arrangerPipes
	}
}
