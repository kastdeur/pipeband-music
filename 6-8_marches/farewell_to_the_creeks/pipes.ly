\version "2.18.2"

\include "config.ily"
\include "notes.pipes.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			\new NullVoice = "format" {
				\repeat unfold 4 {
					\repeat volta 2 {
						\part \line
					}
					\break
				}
			}%Format
			
			\new Voice = "pipes" {
				\pipesA s8

				\pipesB s8

				\pipesC s8

				\pipesD s8
			}
		>>
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
				\partial 8
				\pipesA
				\pipesA


				\pipesB
				\pipesB

				\pipesC
				\pipesC

				\pipesD
				\pipesD
	}
	\midi { \confTempo }
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}
