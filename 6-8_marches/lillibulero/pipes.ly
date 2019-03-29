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
					\line
					\break
					\halfline

				} \alternative {
					\halfline
					\halfline
				}
				\bar "|."
			}%Format

			\new Voice = "pipes" {
				\pipesAA

				\pipesABAA
				\pipesABABA
				\pipesABABB
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
		\pipesAA
		\pipesABAA
		\pipesABABA

		\pipesAA
		\pipesABAA
		\pipesABABB

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
