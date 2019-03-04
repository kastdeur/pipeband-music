\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
				\repeat volta 2 {
					\pipesAA
				} \alternative {
					\pipesABA
					\pipesABB
				}\bar "|."

				\break
				\pipesBA
				\bar "||"
				\break
				\pipesBB
				\bar "|."
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
				\pipesABA
				\pipesAA
				\pipesABB

				\pipesBA
				\pipesBB
		}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
