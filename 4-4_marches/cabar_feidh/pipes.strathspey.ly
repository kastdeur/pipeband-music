\version "2.18.2"

\include "config.ily"
\include "notes.pipes.strathspey.ily"

\score {
    \new Staff {
		\global
		\pipeglobal
		<<
			\new NullVoice = "format" {
				\repeat unfold 4 {
				  \repeat volta 2 {
				  	\partial 16 s16
					\line
				  }
				  \break
				}
			}%Format
			
			\new Voice = "pipes" {
				\pipesStrathspeyA s16

				\pipesStrathspeyB s16

				\pipesStrathspeyC s16

				\pipesStrathspeyD s16
			}
		>>
	}
	\header {
		title = \titleStrathspey
		meter = \meterStrathspey
		instrument = \instrumentPipesStrathspey
		composer = \composerPipesStrathspey
		arranger = \arrangerPipesStrathspey
	}
}
\score {
	\new Staff { \global \pipeglobal
		\set Staff.midiInstrument = #"bagpipe"
		%%Tune
		\partial 16
		\pipesStrathspeyA
		\pipesStrathspeyB
		\pipesStrathspeyC
		\pipesStrathspeyD
	}
	\midi { \confTempo }
	\header {
		title = \titleStrathspey
		meter = \meterStrathspey
		instrument = \instrumentPipesStrathspey
		composer = \composerPipesStrathspey
	}
}
