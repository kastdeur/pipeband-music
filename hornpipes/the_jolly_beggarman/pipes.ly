\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
				\repeat volta 2 {
					\partial 8
					\pipesAA
					\pipesAB
				}
				\break
				\repeat volta 2 {
					\partial 8
					\pipesBA
				} \alternative {
					{\partial 8 \pipesBBA }
					{\partial 8 \pipesBBB }
				}
				\bar "|."
				\break
				\repeat volta 2 {
					\partial 8
					\pipesCA
					\pipesCB
				}
				\break
				\repeat volta 2 {
					\partial 8
					\pipesDA
				} \alternative {
					{\partial 8 \pipesDBA }
					{\partial 8 \pipesDBB }
				}
				\bar "|."
			}%Format
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
				\pipesAA \pipesAB
				\pipesAA \pipesAB

				\pipesBA \pipesBBA
				\pipesBA \pipesBBB

				\pipesCA \pipesCB
				\pipesCA \pipesCB

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
