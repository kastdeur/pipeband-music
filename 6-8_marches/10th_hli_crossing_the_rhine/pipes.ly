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
					\pipesAB s8
				}
				\break

				\repeat volta 2 {
					\partial 8
					\pipesBA
				} \alternative {
					{ \pipesBB s8 }
					{ \pipesAB s8 }
				}
				\bar ".|:-||"
				\break

				\repeat volta 2 {
					\partial 8
					\pipesCA
					\pipesCB s8
				}
				\break

				\repeat volta 2 {
					\partial 8
					\pipesDA
				} \alternative {
					{ \pipesDB s8 }
					{ \pipesCB s8 }
				}
				\bar "|."
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
