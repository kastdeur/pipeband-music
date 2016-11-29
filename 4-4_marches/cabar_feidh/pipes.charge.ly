\version "2.18.2"

\include "bagpipe.ly"

\include "bagpipe.ly"

\include "config.ily"
\include "notes.pipes.charge.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			\new NullVoice = "format" {
				\repeat unfold 2 {
				  \repeat volta 2 {
				  	\part
					\line
				  }
				  \break
				}
			}%Format
			
			\new Voice = "pipes" {
				\pipesChargeA s8

				\pipesChargeB s8
			}
		>>
	}
	\header {
		title = \titleCharge
		meter = \meterCharge
		instrument = \instrumentPipesCharge
		composer = \composerPipesCharge
	}
}
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\partial 8
		\pipesChargeA
		\pipesChargeB
	}
	\midi { \confTempo }
	\header {
		title = \titleCharge
		meter = \meterCharge
		instrument = \instrumentPipesCharge
		composer = \composerPipesCharge
	}
}
