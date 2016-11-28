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
				  	\part
					\line
				  }
				  \break
				}
			}%Format
			
			\new Voice = "pipes" {
				\pipesA s16

				\pipesB s16

				\pipesC s16

				\pipesD s16
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
		\partial 16
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
