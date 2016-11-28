\version "2.18.2"

\include "config.ily"
\include "notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			\new NullVoice = "format" {
				\repeat unfold 4 {
				  \repeat volta 2 {
				  	\part
					\halfline
				  } \alternative {
					\halfline
					\halfline
				 } \bar "|."
				  \break
				}
			}%Format
			
			\new Voice = "pipes" {
				\pipesAA
				\pipesABA s8
				\pipesABB s8

				\pipesBA
				\pipesBBA s8
				\pipesBBB s8

				\pipesCA
				\pipesCBA s8
				\pipesCBB s8

				\pipesDA
				\pipesDBA s8
				\pipesDBB s8
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
		\pipesAA \pipesABA
		\pipesAA \pipesABB

		\pipesBA \pipesBBA
		\pipesBA \pipesBBB
		
		\pipesCA \pipesCBA
		\pipesCA \pipesCBB

		\pipesDA \pipesDBA
		\pipesDA \pipesDBB
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
