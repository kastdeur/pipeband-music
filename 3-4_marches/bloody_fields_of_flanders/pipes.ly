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
					\break
					\halfline
				}
				\break
				\repeat volta 2 {
					\halfline
					\break
				} \alternative {
					{\halfline \break}
					\halfline
				}
				\bar "|."
			}%Format

			\new Voice = "pipes" {
				\pipesAA
				\pipesAB

				\pipesBA
				\pipesBBA
				\pipesAB
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
		\unfoldRepeats {
			\repeat volta 2 {
				\pipesAA
				\pipesAB
			}
			\repeat volta 2 {
				\pipesBA
			} \alternative {
				\pipesBBA
				\pipesAB
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
