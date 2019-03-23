\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		\repeat volta 2 {
			\partial 4 \pipesA
		}
		\break
		\repeat volta 2 {
			\partial 4 \pipesBA
		} \alternative {
			{ \partial 4 \pipesBBA }
			{ \partial 4 \pipesBBB }
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
				\pipesA
			}
			\repeat volta 2 {
				\pipesBA
			} \alternative {
			  \pipesBBA
			  \pipesBBB
			}
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
