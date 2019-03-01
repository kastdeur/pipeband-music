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
			\pipesAB
		}
		\break
		\repeat volta 2 {
			\pipesBA
			\break
		} \alternative {
			{\pipesBBA \break}
			\pipesBBB
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
		\unfoldRepeats {
			\repeat volta 2 {
				\pipesAA
				\pipesAB
			}
			\break
			\repeat volta 2 {
				\pipesBA
				\break
			} \alternative {
				{\pipesBBA \break}
				\pipesBBB
			}
			\bar "|."
		}

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
