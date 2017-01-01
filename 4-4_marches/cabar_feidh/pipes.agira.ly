\version "2.18.2"

\include "bagpipe.ly"

\include "./config.ily"
\include "./notes.pipes.agira.ily"

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
				\pipesAgiraA s8

				\pipesAgiraB s8

				\pipesAgiraC s8

				\pipesAgiraD s8
			}
		>>
	}
	\header {
		title = \titleAgira
		meter = \meterAgira
		instrument = \instrumentPipes
		composer = \composerPipesAgira
	}
}
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\partial 8
		\pipesAgiraA
		\pipesAgiraB
		\pipesAgiraC
		\pipesAgiraD
	}
	\midi { \confTempo }
	\header {
		title = \titleAgira
		meter = \meterAgira
		instrument = \instrumentPipesAgira
		composer = \composerPipesAgira
	}
}
