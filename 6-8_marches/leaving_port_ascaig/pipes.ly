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
			\pipesA
		}
		\break

		\repeat volta 2 {
			\partial 8
			\pipesBA
		} \alternative {
			\pipesBBA
			\pipesBBB
		}
		\bar "||"
		\break

		\repeat volta 2 {
			\partial 8
			\pipesC
		}
		\break

		\repeat volta 2 {
			\partial 8
			\pipesDA
		} \alternative {
			\pipesDBA
			\pipesDBB				}
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
			\partial 8
			\pipesA
		}
		\break

		\repeat volta 2 {
			\partial 8
			\pipesBA
		} \alternative {
			\pipesBBA
			\pipesBBB
		}
		\bar "||"
		\break

		\repeat volta 2 {
			\partial 8
			\pipesC
		}
		\break

		\repeat volta 2 {
			\partial 8
			\pipesDA
		} \alternative {
			\pipesDBA
			\pipesDBB				}
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
