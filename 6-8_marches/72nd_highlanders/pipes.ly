\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
				\repeat volta 2 {
					\partial 4
					\pipesA s4
				}
				\break

				\repeat volta 2 {
					\partial 4
					\pipesBA
				} \alternative {
					{ \pipesBBA s4 }
					{ \pipesBBB s4 }
				}
				\bar ".|:-||"
				\break

				\repeat volta 2 {
					\partial 4
					\pipesC s4
				}
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
