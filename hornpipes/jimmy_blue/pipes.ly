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
				\repeat unfold 3 {
					\repeat volta 2 {
						\part
						\halfline
						\break
						\halfline
					}
					\break
				}

				\repeat volta 2 {
					\part
					\halfline
				} \alternative {
					\halfline
					\halfline
				}
				\bar "|."
			}
			\new Voice = "pipes" {
					\pipesA s8
					\pipesB s8
					\pipesC s8
					
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
		\unfoldRepeats {
			\repeat volta 2 {
				\partial 8
				\pipesA
			}
			\repeat volta 2 {
				\partial 8
				\pipesB
			}
			\repeat volta 2 {
				\partial 8
				\pipesC
			}
			\repeat volta 2 {
				\partial 8
				\pipesDA
			} \alternative {
				\pipesDBA
				\pipesDBB
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
